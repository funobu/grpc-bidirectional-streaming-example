import 'package:flutter/material.dart';
import 'package:sample_app/views/realtime_conversation_form_view.dart';

class RealtimeConversationBottomSheetWidget extends StatelessWidget {
  const RealtimeConversationBottomSheetWidget({
    super.key,
    required this.formFocusNode,
  });

  final FocusNode formFocusNode;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(32),
          topRight: Radius.circular(32),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 0,
            blurRadius: 4,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: RealtimeConversationForm(
        formFocusNode: formFocusNode,
      ),
    );
  }
}
