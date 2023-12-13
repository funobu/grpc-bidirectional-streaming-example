import 'package:grpc/service_api.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'grpc_channel_provider.g.dart';

@riverpod
ClientChannel grpcChannel(GrpcChannelRef ref) {
  throw UnimplementedError();
}
