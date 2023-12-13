//
//  Generated code. Do not modify.
//  source: message_service_v1.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'message_service_v1.pb.dart' as $0;

export 'message_service_v1.pb.dart';

@$pb.GrpcServiceName('message.MessageService')
class MessageServiceClient extends $grpc.Client {
  static final _$realtimeConversation = $grpc.ClientMethod<$0.RealtimeConversationRequest, $0.RealtimeConversationResponse>(
      '/message.MessageService/RealtimeConversation',
      ($0.RealtimeConversationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.RealtimeConversationResponse.fromBuffer(value));

  MessageServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseStream<$0.RealtimeConversationResponse> realtimeConversation($async.Stream<$0.RealtimeConversationRequest> request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$realtimeConversation, request, options: options);
  }
}

@$pb.GrpcServiceName('message.MessageService')
abstract class MessageServiceBase extends $grpc.Service {
  $core.String get $name => 'message.MessageService';

  MessageServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.RealtimeConversationRequest, $0.RealtimeConversationResponse>(
        'RealtimeConversation',
        realtimeConversation,
        true,
        true,
        ($core.List<$core.int> value) => $0.RealtimeConversationRequest.fromBuffer(value),
        ($0.RealtimeConversationResponse value) => value.writeToBuffer()));
  }

  $async.Stream<$0.RealtimeConversationResponse> realtimeConversation($grpc.ServiceCall call, $async.Stream<$0.RealtimeConversationRequest> request);
}
