/*
 *
 * Copyright 2021-2023 Software Radio Systems Limited
 *
 * This file is part of srsRAN.
 *
 * srsRAN is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Affero General Public License as
 * published by the Free Software Foundation, either version 3 of
 * the License, or (at your option) any later version.
 *
 * srsRAN is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Affero General Public License for more details.
 *
 * A copy of the GNU Affero General Public License can be found in
 * the LICENSE file in the top-level directory of this distribution
 * and at http://www.gnu.org/licenses/.
 *
 */

#pragma once

#include "du_cell_manager.h"
#include "du_ue/du_ue_manager.h"
#include "ran_resource_management/du_ran_resource_manager_impl.h"
#include "srsran/du_manager/du_manager.h"
#include "srsran/du_manager/du_manager_params.h"
#include <iostream>
#include <string>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <unistd.h>
#include "../grpc/e2_and_o1.pb.h"

// using grpc::Server;
// using grpc::ServerBuilder;
// using grpc::ServerContext;
// using grpc::Status;
// using mypackage::MyService;
// using mypackage::StreamRequest;
// using mypackage::StreamResponse;
// using mypackage::MatrixRequest;
// using mypackage::MatrixResponse;
// using mypackage::UeMaxPrbAllocation;

namespace srsran {
namespace srs_du {

class du_manager_metrics final : public rlc_metrics_notifier
{
public:
  void report_metrics(const rlc_metrics& metrics) override {
    // In this function, we will update the RLC metrics in the metrics database.
    metrics_vector.push_back(metrics);
  }

      int get_total_ue_count() {
        return metrics_vector.size();
    }

  rlc_metrics get_metrics(uint32_t ue_index) {
        // Check if the UE ID is within a valid range.
        if (ue_index >= 0 && ue_index < metrics_vector.size()) {
            return metrics_vector[ue_index];
        } else {
            // Return a default value or handle the case when metrics for the UE ID are not found.
            // You can return an empty metrics object or throw an exception, for example.
            // Modify this as per your application's requirements.
            return {}; // Return an empty metrics object as a placeholder.
        }
  }

private:
  std::vector<rlc_metrics> metrics_vector;
};

class du_manager_impl final : public du_manager_interface
{
public:
  explicit du_manager_impl(const du_manager_params& params_);
  ~du_manager_impl();

  // Controller interface.
  void start() override;
  void stop() override;

  // MAC interface
  void handle_ul_ccch_indication(const ul_ccch_indication_message& msg) override;

  // Task scheduling interface.
  void schedule_async_task(async_task<void>&& task) override { main_ctrl_loop.schedule(std::move(task)); }
  void schedule_async_task(du_ue_index_t ue_index, async_task<void>&& task) override
  {
    ue_mng.schedule_async_task(ue_index, std::move(task));
  }

  du_ue_index_t find_unused_du_ue_index() override;

  async_task<f1ap_ue_context_creation_response>
  handle_ue_context_creation(const f1ap_ue_context_creation_request& request) override;

  async_task<f1ap_ue_context_update_response>
  handle_ue_context_update(const f1ap_ue_context_update_request& request) override;

  async_task<void> handle_ue_delete_request(const f1ap_ue_delete_request& request) override;

  void handle_ue_reestablishment(du_ue_index_t new_ue_index, du_ue_index_t old_ue_index) override;

  size_t nof_ues() override;

  async_task<ric_control_config_response> configure_ue_mac_scheduler(srsran::ric_control_config reconf) override;

  // Method to start the server and listen for clients on another thread
  void setup_server() {
    // Start the thread to handle incoming connections
    server_thread_ = std::thread(&du_manager_impl::HandleConnections, this);
  }

  void stop_server() {
    // Close all client sockets to stop data transmission
    for (int clientSocket : clientSockets) {
      close(clientSocket);
    }

    if (server_thread_.joinable()) {
      // Close the server socket to stop listening for incoming connections
      close(serverSocket);

      // Wait for the server thread to finish (gracefully terminate)
      server_thread_.join();
    }
  }

  // Method to handle incoming connections
  void HandleConnections() {
      if (serverSocket) {
        std::cerr << "Server already running" << std::endl;
        return;
      }

      serverSocket = socket(AF_INET, SOCK_STREAM, 0);
      if (serverSocket == -1) {
          std::cerr << "Error creating socket." << std::endl;
          serverSocket = 0;
          return;
      }
     sockaddr_in serverAddress;
      serverAddress.sin_family = AF_INET;
      serverAddress.sin_port = htons(5000);
      serverAddress.sin_addr.s_addr = INADDR_ANY;
     if (bind(serverSocket, (struct sockaddr *)&serverAddress, sizeof(serverAddress)) == -1) {
          std::cerr << "Error binding socket." << std::endl;
          close(serverSocket);
          return;
      }
     if (listen(serverSocket, 5) == -1) {
          std::cerr << "Error listening on socket." << std::endl;
          close(serverSocket);
          return;
      }
     std::cout << "Server is listening on port " << 5000 << "..." << std::endl;
     while (true) {
          int clientSocket;
          sockaddr_in clientAddress;
          socklen_t clientAddressSize = sizeof(clientAddress);
         // Accept incoming connections
          clientSocket = accept(serverSocket, (struct sockaddr *)&clientAddress, &clientAddressSize);
         if (clientSocket == -1) {
              std::cerr << "Error accepting connection." << std::endl;
              continue; // Continue listening for other connections
          }

    // Print the client's IP address
    char clientIP[INET_ADDRSTRLEN];
    if (inet_ntop(AF_INET, &(clientAddress.sin_addr), clientIP, INET_ADDRSTRLEN) != nullptr) {
      std::cout << "Accepted connection from IP: " << clientIP << std::endl;
    } else {
      std::cerr << "Error converting client IP address." << std::endl;
    }
         // Handle the client connection (e.g., create a new thread to handle it)
        clientSockets.push_back(clientSocket);  // Store client socket
        std::thread(&du_manager_impl::listen_for_client, this, clientSocket).detach();
      }
     // Note: This loop will continue running until you stop the server.
      // You should add a way to gracefully shut down the server.
  }

  void listen_for_client(int clientSocket) {
      char buffer[1024];
      while (true) {
          if (std::find(clientSockets.begin(), clientSockets.end(), clientSocket) == clientSockets.end()) {
            std::cerr << "Client is not open anymore. Exiting thread." << std::endl;
            break;
          }

          int bytesRead = recv(clientSocket, buffer, sizeof(buffer), 0);
          if (bytesRead <= 0) {
              continue;
          }
  
          // Deserialize the received data using protobuf
          oran::service_message service_message; // Use the message type defined in the updated .proto file
          if (!service_message.ParseFromArray(buffer, bytesRead)) {
              std::cerr << "Error parsing protobuf message %d" << bytesRead << std::endl;
              break;
          }
  
          int32_t messageType = service_message.type();
          
          rlc_metrics metrics = {};
          oran::service_message message;

          if (messageType == 0) {
              // Get the metrics
              message.set_type(3);
              for (int ue_id = 0; ue_id < metrics_handler.get_total_ue_count(); ++ue_id) {
                metrics = metrics_handler.get_metrics(ue_id);

                // Calculate the two metrics that need to be sent
                double pkt_drop_rate = ((1.0) * (metrics.tx.num_dropped_sdus + metrics.tx.num_discarded_sdus))/metrics.tx.num_sdus;
                double pkt_volume = (metrics.tx.num_sdus * 8)/1000;

                oran::kpm_per_ue* kpm_message = message.add_ue_kpb_metrics();
                kpm_message->set_ue_index(metrics.ue_index);
                kpm_message->set_pkt_drop_rate(pkt_drop_rate);
                kpm_message->set_pkt_volume(pkt_volume);
              }

              std::string serialized_message;
              service_message.SerializeToString(&serialized_message);
              send(clientSocket, serialized_message.c_str(), serialized_message.length(), 0);   
          } else if (messageType == 1) {
              for (const auto& ueMaxPrbAllocation : service_message.ue_max_prb_allocations()) {
                int32_t ueIndex = ueMaxPrbAllocation.ue_index();
                int32_t maxPrb = ueMaxPrbAllocation.max_prb();
  
                // Handle each ue_index and max_prb pair
                std::cout << "Received ue_index: " << ueIndex << ", max_prb: " << maxPrb << std::endl;
  
                srsran::ric_control_config config;
                config.ue_id = ueIndex;
                config.min_prb_alloc = 1;
                config.max_prb_alloc = maxPrb;

                configure_ue_mac_scheduler(config);
                
                // No response necessary
              }
          } else {
            std::cerr << "Received an unexpected message type: " << messageType << std::endl;
          }
      }
  
      // Close the client socket
      close(clientSocket);
  }

  void initialize_rlc_metrics(void) {
    params.rlc.rlc_metrics_src->add_subscriber(metrics_handler);
  }
private:
  // DU manager configuration that will be visible to all running procedures
  std::thread server_thread_;
  int serverSocket;
  std::vector<int> clientSockets;
  du_manager_params     params;
  du_manager_metrics    metrics_handler;
  srslog::basic_logger& logger;
  //du_ue_ric_configuration_procedure config_update;

  // Components
  du_cell_manager              cell_mng;
  du_ran_resource_manager_impl cell_res_alloc;
  du_ue_manager                ue_mng;

  std::mutex mutex;
  bool       running{false};

  // Handler for DU tasks.
  async_task_sequencer main_ctrl_loop;
};

// class MyServiceImpl final : public MyService::Service {
// public:
//     MyServiceImpl(du_manager_impl *du_ptr) : du(du_ptr) {}

//     Status ServerToClientStream(ServerContext* context, const StreamRequest* request, grpc::ServerWriter<StreamResponse>* writer) override {
//         // Implement your streaming logic here.
//         // You can use the 'writer' to send responses to the client.
//         return Status::OK;
//     }

//     Status ClientToServer(ServerContext* context, const MatrixRequest* request, MatrixResponse* response) override {
//         // Implement your RPC logic here.
//         // Access the request parameters from 'request' and fill 'response'.
//         const google::protobuf::RepeatedPtrField<UeMaxPrbAllocation>& ue_allocations = request->ue_max_prb_allocations();

//         // Iterate through the list of UE allocations
//         for (const UeMaxPrbAllocation& allocation : ue_allocations) {
//             uint32_t ue_index = allocation.ue_index();
//             uint32_t max_prb_allocation = allocation.max_prb_allocation();

//             srsran::ric_control_config config;
//             config.ue_id = ue_index;
//             config.min_prb_alloc = 1;
//             config.max_prb_alloc = max_prb_allocation;

//             if (du) {
//               du->configure_ue_mac_scheduler(config);
//             }
//         }

//         return Status::OK;
//     }

// private:
//     // Member variable to store the pointer to the du object.
//     du_manager_impl* du;
// };

} // namespace srs_du
} // namespace srsran
