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
#include <grpc++/grpc++.h>
#include "../../lib/grpc/e2_and_o1.grpc.pb.h"
#include "../../lib/grpc/e2_and_o1.pb.h"

using grpc::Server;
using grpc::ServerBuilder;
using grpc::ServerContext;
using grpc::Status;
using mypackage::MyService;
using mypackage::StreamRequest;
using mypackage::StreamResponse;
using mypackage::MatrixRequest;
using mypackage::MatrixResponse;
using mypackage::UeMaxPrbAllocation;

namespace srsran {
namespace srs_du {
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

private:
  // DU manager configuration that will be visible to all running procedures
  du_manager_params     params;
  srslog::basic_logger& logger;
  std::unique_ptr<grpc::Server> server_; // Store the server instance

  // Components
  du_cell_manager              cell_mng;
  du_ran_resource_manager_impl cell_res_alloc;
  du_ue_manager                ue_mng;

  std::mutex mutex;
  bool       running{false};

  // Handler for DU tasks.
  async_task_sequencer main_ctrl_loop;
};

class MyServiceImpl final : public MyService::Service {
public:
    MyServiceImpl(srsran::srs_du::du_manager_impl* du_ptr) : du_ptr_(du_ptr) {}

    Status ServerToClientStream(ServerContext* context, const StreamRequest* request, grpc::ServerWriter<StreamResponse>* writer) override {
        // Implement your streaming logic here.
        // You can use the 'writer' to send responses to the client.
        return Status::OK;
    }

    Status ClientToServer(ServerContext* context, const MatrixRequest* request, MatrixResponse* response) override {
        // Implement your RPC logic here.
        // Access the request parameters from 'request' and fill 'response'.
        const google::protobuf::RepeatedPtrField<UeMaxPrbAllocation>& ue_allocations = request->ue_max_prb_allocations();

        // Iterate through the list of UE allocations
        for (const UeMaxPrbAllocation& allocation : ue_allocations) {
            uint32_t ue_index = allocation.ue_index();
            uint32_t max_prb_allocation = allocation.max_prb_allocation();

            srsran::ric_control_config config;
            config.ue_id = ue_index;
            config.min_prb_alloc = 1;
            config.max_prb_alloc = max_prb_allocation;

            if (du_ptr_) {
              du_ptr_->configure_ue_mac_scheduler(config);
            }
        }

        return Status::OK;
    }

private:
    // Member variable to store the pointer to the du object.
    srsran::srs_du::du_manager_impl* du_ptr_;
};

} // namespace srs_du
} // namespace srsran
