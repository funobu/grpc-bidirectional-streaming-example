import 'dart:async';

import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sample_app/models/message.dart';
import 'package:sample_app/generated/message_service_v1.pbgrpc.dart'
    as grpc_message_service;
import 'package:sample_app/providers/grpc_channel_provider.dart';

part 'realtime_conversation_logic.g.dart';

@riverpod
StreamController<MessageRequestStreamModel> conversationRequestStreamController(
  ConversationRequestStreamControllerRef ref,
) {
  final ctrl = StreamController<MessageRequestStreamModel>.broadcast();
  ref.onDispose(() {
    ctrl.close();
  });
  return ctrl;
}

@riverpod
Stream<MessageResponseStreamModel> realtimeConversationStreamLogic(
  RealtimeConversationStreamLogicRef ref,
) async* {
  // API側へリクエストを送る用のStreamController
  final grpcReqController =
      StreamController<grpc_message_service.RealtimeConversationRequest>();

  // UIからメッセージを送信する用に作成したStreamControllerのProviderを監視
  // メッセージを受信し次第、gRPCのリクエストを送信する
  ref.watch(conversationRequestStreamControllerProvider).stream.listen((event) {
    debugPrint('message: ${event.message}');
    grpcReqController.add(
      grpc_message_service.RealtimeConversationRequest(
        message: event.message,
      ),
    );
  });

  // StreamProviderの戻り値に使うStreamController (複数の購読で受け取れるようブロードキャスト)
  final resController =
      StreamController<MessageResponseStreamModel>.broadcast();

  // gRPCのサービスに接続するためのstub
  final channel = ref.read(grpcChannelProvider);
  final stub = grpc_message_service.MessageServiceClient(channel);
  // gRPCからストリームを受け取るためのStream
  final res = stub.realtimeConversation(
    grpcReqController.stream,
  );

  // 現在のメッセージを表す変数 (文字が追加されるたびに更新する)
  String currentMessage = '';
  try {
    res.listen(
      (event) async {
        // currentMessageでgRPCから受け取った文字を追加する
        currentMessage = currentMessage + event.messageChar;
        debugPrint('currentMessage: $currentMessage');
        // 新しいレスポンスのモデルを作成し、resControllerに渡す
        final res = MessageResponseStreamModel(
            messageId: event.messageId,
            message: currentMessage,
            isDone: event.isDone);
        resController.sink.add(res);

        // isDoneがtrueの場合は1メッセージが完了のため、currentMessageを空にする
        if (event.isDone) {
          // TODO: 本来はここで端末内にメッセージを保存する処理を行う
          debugPrint('messageId: ${event.messageId}, message: $currentMessage');
          currentMessage = '';
        }
      },
    );
  } catch (err) {
    // ここにエラーハンドリングを記述する
    rethrow;
  }

  // resControllerのストリームをStreamProviderの戻り値にする
  yield* resController.stream;
}
