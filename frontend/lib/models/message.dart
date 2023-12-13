import 'package:freezed_annotation/freezed_annotation.dart';

part 'message.freezed.dart';

@freezed
class MessageRequestStreamModel with _$MessageRequestStreamModel {
  const factory MessageRequestStreamModel({
    required String message,
  }) = _ConversationMessageRequestStreamModel;
}

@freezed
class MessageResponseStreamModel with _$MessageResponseStreamModel {
  const factory MessageResponseStreamModel({
    required String messageId,
    required String message,
    required bool isDone,
  }) = _ConversationMessageResponseStreamModel;
}
