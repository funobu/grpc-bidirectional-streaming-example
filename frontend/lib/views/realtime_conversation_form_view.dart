import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sample_app/logics/realtime_conversation_logic.dart';
import 'package:sample_app/models/message.dart';

class RealtimeConversationForm extends HookConsumerWidget {
  RealtimeConversationForm({
    super.key,
    required this.formFocusNode,
  });

  final FocusNode formFocusNode;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isInputEnabled = useState<bool>(true);

    final formCtrl = useTextEditingController();
    final streamCtrl = ref.read(conversationRequestStreamControllerProvider);

    ref.listen(realtimeConversationStreamLogicProvider, (_, currentValue) {
      final data = currentValue.valueOrNull;
      if (data?.isDone == true) {
        isInputEnabled.value = true;
        return;
      }

      isInputEnabled.value = false;
    });

    onSend() {
      if (_formKey.currentState!.validate()) {
        isInputEnabled.value = false;
        final req = MessageRequestStreamModel(
          message: formCtrl.text,
        );
        streamCtrl.add(req);
        formCtrl.value = TextEditingValue.empty;
        formFocusNode.unfocus();
      }
    }

    useEffect(() {
      // 初期メッセージを送信
      const req = MessageRequestStreamModel(
        message: 'こんにちは',
      );
      streamCtrl.onListen = () => streamCtrl.add(req);
      debugPrint('start');
    }, []);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Form(
          key: _formKey,
          child: TextFormField(
            keyboardType: TextInputType.multiline,
            maxLines: 2,
            controller: formCtrl,
            focusNode: formFocusNode,
            decoration: const InputDecoration(
              border: InputBorder.none,
              hintText: 'メッセージを入力してください',
            ),
            style: TextStyle(
              fontSize: 16,
              color: Colors.blueGrey[800],
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'メッセージを記入してください';
              }
              if (value.length > 100) {
                return 'メッセージは100文字以内で記入してください';
              }
              return null;
            },
          ),
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SendMessageButton(onPressed: onSend),
          ],
        ),
      ],
    );
  }
}

class SendMessageButton extends StatelessWidget {
  const SendMessageButton({super.key, required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Column(
        children: [
          Icon(Icons.send, color: Colors.blueGrey[800], size: 24),
          Text(
            '送信',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Colors.blueGrey[800],
                ),
          ),
        ],
      ),
    );
  }
}
