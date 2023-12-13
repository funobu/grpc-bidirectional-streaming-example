import 'package:freezed_annotation/freezed_annotation.dart';

part 'config.freezed.dart';

@freezed
abstract class AppConfig with _$AppConfig {
  const factory AppConfig({
    required String flavor,
    required String apiHost,
    required int apiPort,
  }) = _AppConfig;
}
