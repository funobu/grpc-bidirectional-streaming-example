import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sample_app/logics/realtime_conversation_logic.dart';

class RealtimeConversationMessageView extends HookConsumerWidget {
  const RealtimeConversationMessageView({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stream = ref.watch(realtimeConversationStreamLogicProvider);

    return stream.when(
      data: (data) {
        return Text(data.message);
      },
      error: (err, _) => Text('Error: $err'),
      loading: () => const CircularProgressIndicator(),
    );
  }
}
