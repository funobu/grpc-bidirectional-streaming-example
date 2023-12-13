//
//  Generated code. Do not modify.
//  source: message_service_v1.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class RealtimeConversationRequest extends $pb.GeneratedMessage {
  factory RealtimeConversationRequest({
    $core.String? message,
  }) {
    final $result = create();
    if (message != null) {
      $result.message = message;
    }
    return $result;
  }
  RealtimeConversationRequest._() : super();
  factory RealtimeConversationRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RealtimeConversationRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RealtimeConversationRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'message'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RealtimeConversationRequest clone() => RealtimeConversationRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RealtimeConversationRequest copyWith(void Function(RealtimeConversationRequest) updates) => super.copyWith((message) => updates(message as RealtimeConversationRequest)) as RealtimeConversationRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RealtimeConversationRequest create() => RealtimeConversationRequest._();
  RealtimeConversationRequest createEmptyInstance() => create();
  static $pb.PbList<RealtimeConversationRequest> createRepeated() => $pb.PbList<RealtimeConversationRequest>();
  @$core.pragma('dart2js:noInline')
  static RealtimeConversationRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RealtimeConversationRequest>(create);
  static RealtimeConversationRequest? _defaultInstance;

  /// *
  ///  Message
  ///  メッセージ(ユーザ)
  @$pb.TagNumber(1)
  $core.String get message => $_getSZ(0);
  @$pb.TagNumber(1)
  set message($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => clearField(1);
}

class RealtimeConversationResponse extends $pb.GeneratedMessage {
  factory RealtimeConversationResponse({
    $core.String? messageId,
    $core.String? messageChar,
    $core.bool? isDone,
  }) {
    final $result = create();
    if (messageId != null) {
      $result.messageId = messageId;
    }
    if (messageChar != null) {
      $result.messageChar = messageChar;
    }
    if (isDone != null) {
      $result.isDone = isDone;
    }
    return $result;
  }
  RealtimeConversationResponse._() : super();
  factory RealtimeConversationResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RealtimeConversationResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RealtimeConversationResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'message'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'messageId')
    ..aOS(2, _omitFieldNames ? '' : 'messageChar')
    ..aOB(3, _omitFieldNames ? '' : 'isDone')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RealtimeConversationResponse clone() => RealtimeConversationResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RealtimeConversationResponse copyWith(void Function(RealtimeConversationResponse) updates) => super.copyWith((message) => updates(message as RealtimeConversationResponse)) as RealtimeConversationResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RealtimeConversationResponse create() => RealtimeConversationResponse._();
  RealtimeConversationResponse createEmptyInstance() => create();
  static $pb.PbList<RealtimeConversationResponse> createRepeated() => $pb.PbList<RealtimeConversationResponse>();
  @$core.pragma('dart2js:noInline')
  static RealtimeConversationResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RealtimeConversationResponse>(create);
  static RealtimeConversationResponse? _defaultInstance;

  /// *
  ///  MessageID
  ///  メッセージのID (1文字ずつではなく、1つのメッセージで一意)
  @$pb.TagNumber(1)
  $core.String get messageId => $_getSZ(0);
  @$pb.TagNumber(1)
  set messageId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessageId() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessageId() => clearField(1);

  /// *
  ///  MessageChar
  ///  メッセージ1文字(AI)
  @$pb.TagNumber(2)
  $core.String get messageChar => $_getSZ(1);
  @$pb.TagNumber(2)
  set messageChar($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMessageChar() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessageChar() => clearField(2);

  /// *
  ///  IsDone
  ///  完了済みかどうか
  ///  1つのメッセージのストリームが完了したかどうかを表します。
  @$pb.TagNumber(3)
  $core.bool get isDone => $_getBF(2);
  @$pb.TagNumber(3)
  set isDone($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIsDone() => $_has(2);
  @$pb.TagNumber(3)
  void clearIsDone() => clearField(3);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
