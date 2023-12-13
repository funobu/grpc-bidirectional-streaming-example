// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MessageRequestStreamModel {
  String get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MessageRequestStreamModelCopyWith<MessageRequestStreamModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageRequestStreamModelCopyWith<$Res> {
  factory $MessageRequestStreamModelCopyWith(MessageRequestStreamModel value,
          $Res Function(MessageRequestStreamModel) then) =
      _$MessageRequestStreamModelCopyWithImpl<$Res, MessageRequestStreamModel>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$MessageRequestStreamModelCopyWithImpl<$Res,
        $Val extends MessageRequestStreamModel>
    implements $MessageRequestStreamModelCopyWith<$Res> {
  _$MessageRequestStreamModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConversationMessageRequestStreamModelImplCopyWith<$Res>
    implements $MessageRequestStreamModelCopyWith<$Res> {
  factory _$$ConversationMessageRequestStreamModelImplCopyWith(
          _$ConversationMessageRequestStreamModelImpl value,
          $Res Function(_$ConversationMessageRequestStreamModelImpl) then) =
      __$$ConversationMessageRequestStreamModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ConversationMessageRequestStreamModelImplCopyWithImpl<$Res>
    extends _$MessageRequestStreamModelCopyWithImpl<$Res,
        _$ConversationMessageRequestStreamModelImpl>
    implements _$$ConversationMessageRequestStreamModelImplCopyWith<$Res> {
  __$$ConversationMessageRequestStreamModelImplCopyWithImpl(
      _$ConversationMessageRequestStreamModelImpl _value,
      $Res Function(_$ConversationMessageRequestStreamModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ConversationMessageRequestStreamModelImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ConversationMessageRequestStreamModelImpl
    implements _ConversationMessageRequestStreamModel {
  const _$ConversationMessageRequestStreamModelImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'MessageRequestStreamModel(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConversationMessageRequestStreamModelImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConversationMessageRequestStreamModelImplCopyWith<
          _$ConversationMessageRequestStreamModelImpl>
      get copyWith => __$$ConversationMessageRequestStreamModelImplCopyWithImpl<
          _$ConversationMessageRequestStreamModelImpl>(this, _$identity);
}

abstract class _ConversationMessageRequestStreamModel
    implements MessageRequestStreamModel {
  const factory _ConversationMessageRequestStreamModel(
          {required final String message}) =
      _$ConversationMessageRequestStreamModelImpl;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$ConversationMessageRequestStreamModelImplCopyWith<
          _$ConversationMessageRequestStreamModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MessageResponseStreamModel {
  String get messageId => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  bool get isDone => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MessageResponseStreamModelCopyWith<MessageResponseStreamModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageResponseStreamModelCopyWith<$Res> {
  factory $MessageResponseStreamModelCopyWith(MessageResponseStreamModel value,
          $Res Function(MessageResponseStreamModel) then) =
      _$MessageResponseStreamModelCopyWithImpl<$Res,
          MessageResponseStreamModel>;
  @useResult
  $Res call({String messageId, String message, bool isDone});
}

/// @nodoc
class _$MessageResponseStreamModelCopyWithImpl<$Res,
        $Val extends MessageResponseStreamModel>
    implements $MessageResponseStreamModelCopyWith<$Res> {
  _$MessageResponseStreamModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageId = null,
    Object? message = null,
    Object? isDone = null,
  }) {
    return _then(_value.copyWith(
      messageId: null == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConversationMessageResponseStreamModelImplCopyWith<$Res>
    implements $MessageResponseStreamModelCopyWith<$Res> {
  factory _$$ConversationMessageResponseStreamModelImplCopyWith(
          _$ConversationMessageResponseStreamModelImpl value,
          $Res Function(_$ConversationMessageResponseStreamModelImpl) then) =
      __$$ConversationMessageResponseStreamModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String messageId, String message, bool isDone});
}

/// @nodoc
class __$$ConversationMessageResponseStreamModelImplCopyWithImpl<$Res>
    extends _$MessageResponseStreamModelCopyWithImpl<$Res,
        _$ConversationMessageResponseStreamModelImpl>
    implements _$$ConversationMessageResponseStreamModelImplCopyWith<$Res> {
  __$$ConversationMessageResponseStreamModelImplCopyWithImpl(
      _$ConversationMessageResponseStreamModelImpl _value,
      $Res Function(_$ConversationMessageResponseStreamModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageId = null,
    Object? message = null,
    Object? isDone = null,
  }) {
    return _then(_$ConversationMessageResponseStreamModelImpl(
      messageId: null == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ConversationMessageResponseStreamModelImpl
    implements _ConversationMessageResponseStreamModel {
  const _$ConversationMessageResponseStreamModelImpl(
      {required this.messageId, required this.message, required this.isDone});

  @override
  final String messageId;
  @override
  final String message;
  @override
  final bool isDone;

  @override
  String toString() {
    return 'MessageResponseStreamModel(messageId: $messageId, message: $message, isDone: $isDone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConversationMessageResponseStreamModelImpl &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isDone, isDone) || other.isDone == isDone));
  }

  @override
  int get hashCode => Object.hash(runtimeType, messageId, message, isDone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConversationMessageResponseStreamModelImplCopyWith<
          _$ConversationMessageResponseStreamModelImpl>
      get copyWith =>
          __$$ConversationMessageResponseStreamModelImplCopyWithImpl<
              _$ConversationMessageResponseStreamModelImpl>(this, _$identity);
}

abstract class _ConversationMessageResponseStreamModel
    implements MessageResponseStreamModel {
  const factory _ConversationMessageResponseStreamModel(
          {required final String messageId,
          required final String message,
          required final bool isDone}) =
      _$ConversationMessageResponseStreamModelImpl;

  @override
  String get messageId;
  @override
  String get message;
  @override
  bool get isDone;
  @override
  @JsonKey(ignore: true)
  _$$ConversationMessageResponseStreamModelImplCopyWith<
          _$ConversationMessageResponseStreamModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
