import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sample_app/views/realtime_conversation_bottom_sheet_widget.dart';
import 'package:sample_app/views/realtime_conversation_message_widget.dart';

class RealtimeConversationScreen extends HookConsumerWidget {
  const RealtimeConversationScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formFocusNode = useFocusNode();

    return GestureDetector(
      onTap: () => formFocusNode.unfocus(),
      behavior: HitTestBehavior.opaque,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Realtime Conversation',
              style: Theme.of(context).textTheme.headlineMedium),
          elevation: 0,
        ),
        backgroundColor: Colors.blue[50],
        body: Column(
          children: [
            const Expanded(
              child: RealtimeConversationMessageWidget(),
            ),
            const Divider(height: 1),
            RealtimeConversationBottomSheetWidget(formFocusNode: formFocusNode),
          ],
        ),
      ),
    );
  }
}
