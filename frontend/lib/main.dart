import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:grpc/grpc.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sample_app/providers/config.dart';
import 'package:sample_app/providers/config_provider.dart';
import 'package:sample_app/providers/grpc_channel_provider.dart';
import 'package:sample_app/theme.dart';
import 'package:sample_app/views/realtime_conversation_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // 画面を縦方向に固定する
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  const appConfig = AppConfig(
    flavor: String.fromEnvironment("flavor"),
    apiHost: String.fromEnvironment("apiHost"),
    apiPort: int.fromEnvironment("apiPort"),
  );

  final grpcChannel = ClientChannel(
    appConfig.apiHost,
    port: appConfig.apiPort,
    options: ChannelOptions(
      credentials: appConfig.flavor == "prod"
          ? const ChannelCredentials.secure()
          : const ChannelCredentials.insecure(),
      idleTimeout: const Duration(seconds: 10),
    ),
  );

  runApp(
    ProviderScope(
      overrides: [
        grpcChannelProvider.overrideWithValue(grpcChannel),
        appConfigProvider.overrideWithValue(appConfig),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Funo会話',
      theme: getAppTheme(),
      home: const RealtimeConversationScreen(),
    );
  }
}
