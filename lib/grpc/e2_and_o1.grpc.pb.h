// Generated by the gRPC C++ plugin.
// If you make any local change, they will be lost.
// source: e2_and_o1.proto
#ifndef GRPC_e2_5fand_5fo1_2eproto__INCLUDED
#define GRPC_e2_5fand_5fo1_2eproto__INCLUDED

#include "e2_and_o1.pb.h"

#include <functional>
#include <grpcpp/generic/async_generic_service.h>
#include <grpcpp/support/async_stream.h>
#include <grpcpp/support/async_unary_call.h>
#include <grpcpp/support/client_callback.h>
#include <grpcpp/client_context.h>
#include <grpcpp/completion_queue.h>
#include <grpcpp/support/message_allocator.h>
#include <grpcpp/support/method_handler.h>
#include <grpcpp/impl/proto_utils.h>
#include <grpcpp/impl/rpc_method.h>
#include <grpcpp/support/server_callback.h>
#include <grpcpp/impl/server_callback_handlers.h>
#include <grpcpp/server_context.h>
#include <grpcpp/impl/service_type.h>
#include <grpcpp/support/status.h>
#include <grpcpp/support/stub_options.h>
#include <grpcpp/support/sync_stream.h>

namespace mypackage {

class MyService final {
 public:
  static constexpr char const* service_full_name() {
    return "mypackage.MyService";
  }
  class StubInterface {
   public:
    virtual ~StubInterface() {}
    // RPC #1: Server periodically sends a message to the client.
    std::unique_ptr< ::grpc::ClientReaderInterface< ::mypackage::StreamResponse>> ServerToClientStream(::grpc::ClientContext* context, const ::mypackage::StreamRequest& request) {
      return std::unique_ptr< ::grpc::ClientReaderInterface< ::mypackage::StreamResponse>>(ServerToClientStreamRaw(context, request));
    }
    std::unique_ptr< ::grpc::ClientAsyncReaderInterface< ::mypackage::StreamResponse>> AsyncServerToClientStream(::grpc::ClientContext* context, const ::mypackage::StreamRequest& request, ::grpc::CompletionQueue* cq, void* tag) {
      return std::unique_ptr< ::grpc::ClientAsyncReaderInterface< ::mypackage::StreamResponse>>(AsyncServerToClientStreamRaw(context, request, cq, tag));
    }
    std::unique_ptr< ::grpc::ClientAsyncReaderInterface< ::mypackage::StreamResponse>> PrepareAsyncServerToClientStream(::grpc::ClientContext* context, const ::mypackage::StreamRequest& request, ::grpc::CompletionQueue* cq) {
      return std::unique_ptr< ::grpc::ClientAsyncReaderInterface< ::mypackage::StreamResponse>>(PrepareAsyncServerToClientStreamRaw(context, request, cq));
    }
    // RPC #2: Client sends a 2x2 array to the server.
    virtual ::grpc::Status ClientToServer(::grpc::ClientContext* context, const ::mypackage::MatrixRequest& request, ::mypackage::MatrixResponse* response) = 0;
    std::unique_ptr< ::grpc::ClientAsyncResponseReaderInterface< ::mypackage::MatrixResponse>> AsyncClientToServer(::grpc::ClientContext* context, const ::mypackage::MatrixRequest& request, ::grpc::CompletionQueue* cq) {
      return std::unique_ptr< ::grpc::ClientAsyncResponseReaderInterface< ::mypackage::MatrixResponse>>(AsyncClientToServerRaw(context, request, cq));
    }
    std::unique_ptr< ::grpc::ClientAsyncResponseReaderInterface< ::mypackage::MatrixResponse>> PrepareAsyncClientToServer(::grpc::ClientContext* context, const ::mypackage::MatrixRequest& request, ::grpc::CompletionQueue* cq) {
      return std::unique_ptr< ::grpc::ClientAsyncResponseReaderInterface< ::mypackage::MatrixResponse>>(PrepareAsyncClientToServerRaw(context, request, cq));
    }
    class async_interface {
     public:
      virtual ~async_interface() {}
      // RPC #1: Server periodically sends a message to the client.
      virtual void ServerToClientStream(::grpc::ClientContext* context, const ::mypackage::StreamRequest* request, ::grpc::ClientReadReactor< ::mypackage::StreamResponse>* reactor) = 0;
      // RPC #2: Client sends a 2x2 array to the server.
      virtual void ClientToServer(::grpc::ClientContext* context, const ::mypackage::MatrixRequest* request, ::mypackage::MatrixResponse* response, std::function<void(::grpc::Status)>) = 0;
      virtual void ClientToServer(::grpc::ClientContext* context, const ::mypackage::MatrixRequest* request, ::mypackage::MatrixResponse* response, ::grpc::ClientUnaryReactor* reactor) = 0;
    };
    typedef class async_interface experimental_async_interface;
    virtual class async_interface* async() { return nullptr; }
    class async_interface* experimental_async() { return async(); }
   private:
    virtual ::grpc::ClientReaderInterface< ::mypackage::StreamResponse>* ServerToClientStreamRaw(::grpc::ClientContext* context, const ::mypackage::StreamRequest& request) = 0;
    virtual ::grpc::ClientAsyncReaderInterface< ::mypackage::StreamResponse>* AsyncServerToClientStreamRaw(::grpc::ClientContext* context, const ::mypackage::StreamRequest& request, ::grpc::CompletionQueue* cq, void* tag) = 0;
    virtual ::grpc::ClientAsyncReaderInterface< ::mypackage::StreamResponse>* PrepareAsyncServerToClientStreamRaw(::grpc::ClientContext* context, const ::mypackage::StreamRequest& request, ::grpc::CompletionQueue* cq) = 0;
    virtual ::grpc::ClientAsyncResponseReaderInterface< ::mypackage::MatrixResponse>* AsyncClientToServerRaw(::grpc::ClientContext* context, const ::mypackage::MatrixRequest& request, ::grpc::CompletionQueue* cq) = 0;
    virtual ::grpc::ClientAsyncResponseReaderInterface< ::mypackage::MatrixResponse>* PrepareAsyncClientToServerRaw(::grpc::ClientContext* context, const ::mypackage::MatrixRequest& request, ::grpc::CompletionQueue* cq) = 0;
  };
  class Stub final : public StubInterface {
   public:
    Stub(const std::shared_ptr< ::grpc::ChannelInterface>& channel, const ::grpc::StubOptions& options = ::grpc::StubOptions());
    std::unique_ptr< ::grpc::ClientReader< ::mypackage::StreamResponse>> ServerToClientStream(::grpc::ClientContext* context, const ::mypackage::StreamRequest& request) {
      return std::unique_ptr< ::grpc::ClientReader< ::mypackage::StreamResponse>>(ServerToClientStreamRaw(context, request));
    }
    std::unique_ptr< ::grpc::ClientAsyncReader< ::mypackage::StreamResponse>> AsyncServerToClientStream(::grpc::ClientContext* context, const ::mypackage::StreamRequest& request, ::grpc::CompletionQueue* cq, void* tag) {
      return std::unique_ptr< ::grpc::ClientAsyncReader< ::mypackage::StreamResponse>>(AsyncServerToClientStreamRaw(context, request, cq, tag));
    }
    std::unique_ptr< ::grpc::ClientAsyncReader< ::mypackage::StreamResponse>> PrepareAsyncServerToClientStream(::grpc::ClientContext* context, const ::mypackage::StreamRequest& request, ::grpc::CompletionQueue* cq) {
      return std::unique_ptr< ::grpc::ClientAsyncReader< ::mypackage::StreamResponse>>(PrepareAsyncServerToClientStreamRaw(context, request, cq));
    }
    ::grpc::Status ClientToServer(::grpc::ClientContext* context, const ::mypackage::MatrixRequest& request, ::mypackage::MatrixResponse* response) override;
    std::unique_ptr< ::grpc::ClientAsyncResponseReader< ::mypackage::MatrixResponse>> AsyncClientToServer(::grpc::ClientContext* context, const ::mypackage::MatrixRequest& request, ::grpc::CompletionQueue* cq) {
      return std::unique_ptr< ::grpc::ClientAsyncResponseReader< ::mypackage::MatrixResponse>>(AsyncClientToServerRaw(context, request, cq));
    }
    std::unique_ptr< ::grpc::ClientAsyncResponseReader< ::mypackage::MatrixResponse>> PrepareAsyncClientToServer(::grpc::ClientContext* context, const ::mypackage::MatrixRequest& request, ::grpc::CompletionQueue* cq) {
      return std::unique_ptr< ::grpc::ClientAsyncResponseReader< ::mypackage::MatrixResponse>>(PrepareAsyncClientToServerRaw(context, request, cq));
    }
    class async final :
      public StubInterface::async_interface {
     public:
      void ServerToClientStream(::grpc::ClientContext* context, const ::mypackage::StreamRequest* request, ::grpc::ClientReadReactor< ::mypackage::StreamResponse>* reactor) override;
      void ClientToServer(::grpc::ClientContext* context, const ::mypackage::MatrixRequest* request, ::mypackage::MatrixResponse* response, std::function<void(::grpc::Status)>) override;
      void ClientToServer(::grpc::ClientContext* context, const ::mypackage::MatrixRequest* request, ::mypackage::MatrixResponse* response, ::grpc::ClientUnaryReactor* reactor) override;
     private:
      friend class Stub;
      explicit async(Stub* stub): stub_(stub) { }
      Stub* stub() { return stub_; }
      Stub* stub_;
    };
    class async* async() override { return &async_stub_; }

   private:
    std::shared_ptr< ::grpc::ChannelInterface> channel_;
    class async async_stub_{this};
    ::grpc::ClientReader< ::mypackage::StreamResponse>* ServerToClientStreamRaw(::grpc::ClientContext* context, const ::mypackage::StreamRequest& request) override;
    ::grpc::ClientAsyncReader< ::mypackage::StreamResponse>* AsyncServerToClientStreamRaw(::grpc::ClientContext* context, const ::mypackage::StreamRequest& request, ::grpc::CompletionQueue* cq, void* tag) override;
    ::grpc::ClientAsyncReader< ::mypackage::StreamResponse>* PrepareAsyncServerToClientStreamRaw(::grpc::ClientContext* context, const ::mypackage::StreamRequest& request, ::grpc::CompletionQueue* cq) override;
    ::grpc::ClientAsyncResponseReader< ::mypackage::MatrixResponse>* AsyncClientToServerRaw(::grpc::ClientContext* context, const ::mypackage::MatrixRequest& request, ::grpc::CompletionQueue* cq) override;
    ::grpc::ClientAsyncResponseReader< ::mypackage::MatrixResponse>* PrepareAsyncClientToServerRaw(::grpc::ClientContext* context, const ::mypackage::MatrixRequest& request, ::grpc::CompletionQueue* cq) override;
    const ::grpc::internal::RpcMethod rpcmethod_ServerToClientStream_;
    const ::grpc::internal::RpcMethod rpcmethod_ClientToServer_;
  };
  static std::unique_ptr<Stub> NewStub(const std::shared_ptr< ::grpc::ChannelInterface>& channel, const ::grpc::StubOptions& options = ::grpc::StubOptions());

  class Service : public ::grpc::Service {
   public:
    Service();
    virtual ~Service();
    // RPC #1: Server periodically sends a message to the client.
    virtual ::grpc::Status ServerToClientStream(::grpc::ServerContext* context, const ::mypackage::StreamRequest* request, ::grpc::ServerWriter< ::mypackage::StreamResponse>* writer);
    // RPC #2: Client sends a 2x2 array to the server.
    virtual ::grpc::Status ClientToServer(::grpc::ServerContext* context, const ::mypackage::MatrixRequest* request, ::mypackage::MatrixResponse* response);
  };
  template <class BaseClass>
  class WithAsyncMethod_ServerToClientStream : public BaseClass {
   private:
    void BaseClassMustBeDerivedFromService(const Service* /*service*/) {}
   public:
    WithAsyncMethod_ServerToClientStream() {
      ::grpc::Service::MarkMethodAsync(0);
    }
    ~WithAsyncMethod_ServerToClientStream() override {
      BaseClassMustBeDerivedFromService(this);
    }
    // disable synchronous version of this method
    ::grpc::Status ServerToClientStream(::grpc::ServerContext* /*context*/, const ::mypackage::StreamRequest* /*request*/, ::grpc::ServerWriter< ::mypackage::StreamResponse>* /*writer*/) override {
      abort();
      return ::grpc::Status(::grpc::StatusCode::UNIMPLEMENTED, "");
    }
    void RequestServerToClientStream(::grpc::ServerContext* context, ::mypackage::StreamRequest* request, ::grpc::ServerAsyncWriter< ::mypackage::StreamResponse>* writer, ::grpc::CompletionQueue* new_call_cq, ::grpc::ServerCompletionQueue* notification_cq, void *tag) {
      ::grpc::Service::RequestAsyncServerStreaming(0, context, request, writer, new_call_cq, notification_cq, tag);
    }
  };
  template <class BaseClass>
  class WithAsyncMethod_ClientToServer : public BaseClass {
   private:
    void BaseClassMustBeDerivedFromService(const Service* /*service*/) {}
   public:
    WithAsyncMethod_ClientToServer() {
      ::grpc::Service::MarkMethodAsync(1);
    }
    ~WithAsyncMethod_ClientToServer() override {
      BaseClassMustBeDerivedFromService(this);
    }
    // disable synchronous version of this method
    ::grpc::Status ClientToServer(::grpc::ServerContext* /*context*/, const ::mypackage::MatrixRequest* /*request*/, ::mypackage::MatrixResponse* /*response*/) override {
      abort();
      return ::grpc::Status(::grpc::StatusCode::UNIMPLEMENTED, "");
    }
    void RequestClientToServer(::grpc::ServerContext* context, ::mypackage::MatrixRequest* request, ::grpc::ServerAsyncResponseWriter< ::mypackage::MatrixResponse>* response, ::grpc::CompletionQueue* new_call_cq, ::grpc::ServerCompletionQueue* notification_cq, void *tag) {
      ::grpc::Service::RequestAsyncUnary(1, context, request, response, new_call_cq, notification_cq, tag);
    }
  };
  typedef WithAsyncMethod_ServerToClientStream<WithAsyncMethod_ClientToServer<Service > > AsyncService;
  template <class BaseClass>
  class WithCallbackMethod_ServerToClientStream : public BaseClass {
   private:
    void BaseClassMustBeDerivedFromService(const Service* /*service*/) {}
   public:
    WithCallbackMethod_ServerToClientStream() {
      ::grpc::Service::MarkMethodCallback(0,
          new ::grpc::internal::CallbackServerStreamingHandler< ::mypackage::StreamRequest, ::mypackage::StreamResponse>(
            [this](
                   ::grpc::CallbackServerContext* context, const ::mypackage::StreamRequest* request) { return this->ServerToClientStream(context, request); }));
    }
    ~WithCallbackMethod_ServerToClientStream() override {
      BaseClassMustBeDerivedFromService(this);
    }
    // disable synchronous version of this method
    ::grpc::Status ServerToClientStream(::grpc::ServerContext* /*context*/, const ::mypackage::StreamRequest* /*request*/, ::grpc::ServerWriter< ::mypackage::StreamResponse>* /*writer*/) override {
      abort();
      return ::grpc::Status(::grpc::StatusCode::UNIMPLEMENTED, "");
    }
    virtual ::grpc::ServerWriteReactor< ::mypackage::StreamResponse>* ServerToClientStream(
      ::grpc::CallbackServerContext* /*context*/, const ::mypackage::StreamRequest* /*request*/)  { return nullptr; }
  };
  template <class BaseClass>
  class WithCallbackMethod_ClientToServer : public BaseClass {
   private:
    void BaseClassMustBeDerivedFromService(const Service* /*service*/) {}
   public:
    WithCallbackMethod_ClientToServer() {
      ::grpc::Service::MarkMethodCallback(1,
          new ::grpc::internal::CallbackUnaryHandler< ::mypackage::MatrixRequest, ::mypackage::MatrixResponse>(
            [this](
                   ::grpc::CallbackServerContext* context, const ::mypackage::MatrixRequest* request, ::mypackage::MatrixResponse* response) { return this->ClientToServer(context, request, response); }));}
    void SetMessageAllocatorFor_ClientToServer(
        ::grpc::MessageAllocator< ::mypackage::MatrixRequest, ::mypackage::MatrixResponse>* allocator) {
      ::grpc::internal::MethodHandler* const handler = ::grpc::Service::GetHandler(1);
      static_cast<::grpc::internal::CallbackUnaryHandler< ::mypackage::MatrixRequest, ::mypackage::MatrixResponse>*>(handler)
              ->SetMessageAllocator(allocator);
    }
    ~WithCallbackMethod_ClientToServer() override {
      BaseClassMustBeDerivedFromService(this);
    }
    // disable synchronous version of this method
    ::grpc::Status ClientToServer(::grpc::ServerContext* /*context*/, const ::mypackage::MatrixRequest* /*request*/, ::mypackage::MatrixResponse* /*response*/) override {
      abort();
      return ::grpc::Status(::grpc::StatusCode::UNIMPLEMENTED, "");
    }
    virtual ::grpc::ServerUnaryReactor* ClientToServer(
      ::grpc::CallbackServerContext* /*context*/, const ::mypackage::MatrixRequest* /*request*/, ::mypackage::MatrixResponse* /*response*/)  { return nullptr; }
  };
  typedef WithCallbackMethod_ServerToClientStream<WithCallbackMethod_ClientToServer<Service > > CallbackService;
  typedef CallbackService ExperimentalCallbackService;
  template <class BaseClass>
  class WithGenericMethod_ServerToClientStream : public BaseClass {
   private:
    void BaseClassMustBeDerivedFromService(const Service* /*service*/) {}
   public:
    WithGenericMethod_ServerToClientStream() {
      ::grpc::Service::MarkMethodGeneric(0);
    }
    ~WithGenericMethod_ServerToClientStream() override {
      BaseClassMustBeDerivedFromService(this);
    }
    // disable synchronous version of this method
    ::grpc::Status ServerToClientStream(::grpc::ServerContext* /*context*/, const ::mypackage::StreamRequest* /*request*/, ::grpc::ServerWriter< ::mypackage::StreamResponse>* /*writer*/) override {
      abort();
      return ::grpc::Status(::grpc::StatusCode::UNIMPLEMENTED, "");
    }
  };
  template <class BaseClass>
  class WithGenericMethod_ClientToServer : public BaseClass {
   private:
    void BaseClassMustBeDerivedFromService(const Service* /*service*/) {}
   public:
    WithGenericMethod_ClientToServer() {
      ::grpc::Service::MarkMethodGeneric(1);
    }
    ~WithGenericMethod_ClientToServer() override {
      BaseClassMustBeDerivedFromService(this);
    }
    // disable synchronous version of this method
    ::grpc::Status ClientToServer(::grpc::ServerContext* /*context*/, const ::mypackage::MatrixRequest* /*request*/, ::mypackage::MatrixResponse* /*response*/) override {
      abort();
      return ::grpc::Status(::grpc::StatusCode::UNIMPLEMENTED, "");
    }
  };
  template <class BaseClass>
  class WithRawMethod_ServerToClientStream : public BaseClass {
   private:
    void BaseClassMustBeDerivedFromService(const Service* /*service*/) {}
   public:
    WithRawMethod_ServerToClientStream() {
      ::grpc::Service::MarkMethodRaw(0);
    }
    ~WithRawMethod_ServerToClientStream() override {
      BaseClassMustBeDerivedFromService(this);
    }
    // disable synchronous version of this method
    ::grpc::Status ServerToClientStream(::grpc::ServerContext* /*context*/, const ::mypackage::StreamRequest* /*request*/, ::grpc::ServerWriter< ::mypackage::StreamResponse>* /*writer*/) override {
      abort();
      return ::grpc::Status(::grpc::StatusCode::UNIMPLEMENTED, "");
    }
    void RequestServerToClientStream(::grpc::ServerContext* context, ::grpc::ByteBuffer* request, ::grpc::ServerAsyncWriter< ::grpc::ByteBuffer>* writer, ::grpc::CompletionQueue* new_call_cq, ::grpc::ServerCompletionQueue* notification_cq, void *tag) {
      ::grpc::Service::RequestAsyncServerStreaming(0, context, request, writer, new_call_cq, notification_cq, tag);
    }
  };
  template <class BaseClass>
  class WithRawMethod_ClientToServer : public BaseClass {
   private:
    void BaseClassMustBeDerivedFromService(const Service* /*service*/) {}
   public:
    WithRawMethod_ClientToServer() {
      ::grpc::Service::MarkMethodRaw(1);
    }
    ~WithRawMethod_ClientToServer() override {
      BaseClassMustBeDerivedFromService(this);
    }
    // disable synchronous version of this method
    ::grpc::Status ClientToServer(::grpc::ServerContext* /*context*/, const ::mypackage::MatrixRequest* /*request*/, ::mypackage::MatrixResponse* /*response*/) override {
      abort();
      return ::grpc::Status(::grpc::StatusCode::UNIMPLEMENTED, "");
    }
    void RequestClientToServer(::grpc::ServerContext* context, ::grpc::ByteBuffer* request, ::grpc::ServerAsyncResponseWriter< ::grpc::ByteBuffer>* response, ::grpc::CompletionQueue* new_call_cq, ::grpc::ServerCompletionQueue* notification_cq, void *tag) {
      ::grpc::Service::RequestAsyncUnary(1, context, request, response, new_call_cq, notification_cq, tag);
    }
  };
  template <class BaseClass>
  class WithRawCallbackMethod_ServerToClientStream : public BaseClass {
   private:
    void BaseClassMustBeDerivedFromService(const Service* /*service*/) {}
   public:
    WithRawCallbackMethod_ServerToClientStream() {
      ::grpc::Service::MarkMethodRawCallback(0,
          new ::grpc::internal::CallbackServerStreamingHandler< ::grpc::ByteBuffer, ::grpc::ByteBuffer>(
            [this](
                   ::grpc::CallbackServerContext* context, const::grpc::ByteBuffer* request) { return this->ServerToClientStream(context, request); }));
    }
    ~WithRawCallbackMethod_ServerToClientStream() override {
      BaseClassMustBeDerivedFromService(this);
    }
    // disable synchronous version of this method
    ::grpc::Status ServerToClientStream(::grpc::ServerContext* /*context*/, const ::mypackage::StreamRequest* /*request*/, ::grpc::ServerWriter< ::mypackage::StreamResponse>* /*writer*/) override {
      abort();
      return ::grpc::Status(::grpc::StatusCode::UNIMPLEMENTED, "");
    }
    virtual ::grpc::ServerWriteReactor< ::grpc::ByteBuffer>* ServerToClientStream(
      ::grpc::CallbackServerContext* /*context*/, const ::grpc::ByteBuffer* /*request*/)  { return nullptr; }
  };
  template <class BaseClass>
  class WithRawCallbackMethod_ClientToServer : public BaseClass {
   private:
    void BaseClassMustBeDerivedFromService(const Service* /*service*/) {}
   public:
    WithRawCallbackMethod_ClientToServer() {
      ::grpc::Service::MarkMethodRawCallback(1,
          new ::grpc::internal::CallbackUnaryHandler< ::grpc::ByteBuffer, ::grpc::ByteBuffer>(
            [this](
                   ::grpc::CallbackServerContext* context, const ::grpc::ByteBuffer* request, ::grpc::ByteBuffer* response) { return this->ClientToServer(context, request, response); }));
    }
    ~WithRawCallbackMethod_ClientToServer() override {
      BaseClassMustBeDerivedFromService(this);
    }
    // disable synchronous version of this method
    ::grpc::Status ClientToServer(::grpc::ServerContext* /*context*/, const ::mypackage::MatrixRequest* /*request*/, ::mypackage::MatrixResponse* /*response*/) override {
      abort();
      return ::grpc::Status(::grpc::StatusCode::UNIMPLEMENTED, "");
    }
    virtual ::grpc::ServerUnaryReactor* ClientToServer(
      ::grpc::CallbackServerContext* /*context*/, const ::grpc::ByteBuffer* /*request*/, ::grpc::ByteBuffer* /*response*/)  { return nullptr; }
  };
  template <class BaseClass>
  class WithStreamedUnaryMethod_ClientToServer : public BaseClass {
   private:
    void BaseClassMustBeDerivedFromService(const Service* /*service*/) {}
   public:
    WithStreamedUnaryMethod_ClientToServer() {
      ::grpc::Service::MarkMethodStreamed(1,
        new ::grpc::internal::StreamedUnaryHandler<
          ::mypackage::MatrixRequest, ::mypackage::MatrixResponse>(
            [this](::grpc::ServerContext* context,
                   ::grpc::ServerUnaryStreamer<
                     ::mypackage::MatrixRequest, ::mypackage::MatrixResponse>* streamer) {
                       return this->StreamedClientToServer(context,
                         streamer);
                  }));
    }
    ~WithStreamedUnaryMethod_ClientToServer() override {
      BaseClassMustBeDerivedFromService(this);
    }
    // disable regular version of this method
    ::grpc::Status ClientToServer(::grpc::ServerContext* /*context*/, const ::mypackage::MatrixRequest* /*request*/, ::mypackage::MatrixResponse* /*response*/) override {
      abort();
      return ::grpc::Status(::grpc::StatusCode::UNIMPLEMENTED, "");
    }
    // replace default version of method with streamed unary
    virtual ::grpc::Status StreamedClientToServer(::grpc::ServerContext* context, ::grpc::ServerUnaryStreamer< ::mypackage::MatrixRequest,::mypackage::MatrixResponse>* server_unary_streamer) = 0;
  };
  typedef WithStreamedUnaryMethod_ClientToServer<Service > StreamedUnaryService;
  template <class BaseClass>
  class WithSplitStreamingMethod_ServerToClientStream : public BaseClass {
   private:
    void BaseClassMustBeDerivedFromService(const Service* /*service*/) {}
   public:
    WithSplitStreamingMethod_ServerToClientStream() {
      ::grpc::Service::MarkMethodStreamed(0,
        new ::grpc::internal::SplitServerStreamingHandler<
          ::mypackage::StreamRequest, ::mypackage::StreamResponse>(
            [this](::grpc::ServerContext* context,
                   ::grpc::ServerSplitStreamer<
                     ::mypackage::StreamRequest, ::mypackage::StreamResponse>* streamer) {
                       return this->StreamedServerToClientStream(context,
                         streamer);
                  }));
    }
    ~WithSplitStreamingMethod_ServerToClientStream() override {
      BaseClassMustBeDerivedFromService(this);
    }
    // disable regular version of this method
    ::grpc::Status ServerToClientStream(::grpc::ServerContext* /*context*/, const ::mypackage::StreamRequest* /*request*/, ::grpc::ServerWriter< ::mypackage::StreamResponse>* /*writer*/) override {
      abort();
      return ::grpc::Status(::grpc::StatusCode::UNIMPLEMENTED, "");
    }
    // replace default version of method with split streamed
    virtual ::grpc::Status StreamedServerToClientStream(::grpc::ServerContext* context, ::grpc::ServerSplitStreamer< ::mypackage::StreamRequest,::mypackage::StreamResponse>* server_split_streamer) = 0;
  };
  typedef WithSplitStreamingMethod_ServerToClientStream<Service > SplitStreamedService;
  typedef WithSplitStreamingMethod_ServerToClientStream<WithStreamedUnaryMethod_ClientToServer<Service > > StreamedService;
};

}  // namespace mypackage


#endif  // GRPC_e2_5fand_5fo1_2eproto__INCLUDED
