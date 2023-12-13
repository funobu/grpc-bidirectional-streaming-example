// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppConfig {
  String get flavor => throw _privateConstructorUsedError;
  String get apiHost => throw _privateConstructorUsedError;
  int get apiPort => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppConfigCopyWith<AppConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppConfigCopyWith<$Res> {
  factory $AppConfigCopyWith(AppConfig value, $Res Function(AppConfig) then) =
      _$AppConfigCopyWithImpl<$Res, AppConfig>;
  @useResult
  $Res call({String flavor, String apiHost, int apiPort});
}

/// @nodoc
class _$AppConfigCopyWithImpl<$Res, $Val extends AppConfig>
    implements $AppConfigCopyWith<$Res> {
  _$AppConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flavor = null,
    Object? apiHost = null,
    Object? apiPort = null,
  }) {
    return _then(_value.copyWith(
      flavor: null == flavor
          ? _value.flavor
          : flavor // ignore: cast_nullable_to_non_nullable
              as String,
      apiHost: null == apiHost
          ? _value.apiHost
          : apiHost // ignore: cast_nullable_to_non_nullable
              as String,
      apiPort: null == apiPort
          ? _value.apiPort
          : apiPort // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppConfigImplCopyWith<$Res>
    implements $AppConfigCopyWith<$Res> {
  factory _$$AppConfigImplCopyWith(
          _$AppConfigImpl value, $Res Function(_$AppConfigImpl) then) =
      __$$AppConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String flavor, String apiHost, int apiPort});
}

/// @nodoc
class __$$AppConfigImplCopyWithImpl<$Res>
    extends _$AppConfigCopyWithImpl<$Res, _$AppConfigImpl>
    implements _$$AppConfigImplCopyWith<$Res> {
  __$$AppConfigImplCopyWithImpl(
      _$AppConfigImpl _value, $Res Function(_$AppConfigImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flavor = null,
    Object? apiHost = null,
    Object? apiPort = null,
  }) {
    return _then(_$AppConfigImpl(
      flavor: null == flavor
          ? _value.flavor
          : flavor // ignore: cast_nullable_to_non_nullable
              as String,
      apiHost: null == apiHost
          ? _value.apiHost
          : apiHost // ignore: cast_nullable_to_non_nullable
              as String,
      apiPort: null == apiPort
          ? _value.apiPort
          : apiPort // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AppConfigImpl implements _AppConfig {
  const _$AppConfigImpl(
      {required this.flavor, required this.apiHost, required this.apiPort});

  @override
  final String flavor;
  @override
  final String apiHost;
  @override
  final int apiPort;

  @override
  String toString() {
    return 'AppConfig(flavor: $flavor, apiHost: $apiHost, apiPort: $apiPort)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppConfigImpl &&
            (identical(other.flavor, flavor) || other.flavor == flavor) &&
            (identical(other.apiHost, apiHost) || other.apiHost == apiHost) &&
            (identical(other.apiPort, apiPort) || other.apiPort == apiPort));
  }

  @override
  int get hashCode => Object.hash(runtimeType, flavor, apiHost, apiPort);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppConfigImplCopyWith<_$AppConfigImpl> get copyWith =>
      __$$AppConfigImplCopyWithImpl<_$AppConfigImpl>(this, _$identity);
}

abstract class _AppConfig implements AppConfig {
  const factory _AppConfig(
      {required final String flavor,
      required final String apiHost,
      required final int apiPort}) = _$AppConfigImpl;

  @override
  String get flavor;
  @override
  String get apiHost;
  @override
  int get apiPort;
  @override
  @JsonKey(ignore: true)
  _$$AppConfigImplCopyWith<_$AppConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
