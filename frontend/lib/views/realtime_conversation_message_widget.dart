import 'package:flutter/material.dart';
import 'package:sample_app/views/realtime_conversation_message_view.dart';

class RealtimeConversationMessageWidget extends StatelessWidget {
  const RealtimeConversationMessageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(top: 128, left: 16, right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 8),
          const DialogContent(),
          Container(
            padding: const EdgeInsets.only(left: 56),
            child: const DialogBubbleTail(),
          ),
        ],
      ),
    );
  }
}

class DialogContent extends StatelessWidget {
  const DialogContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 0,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Text(
              'Funobu',
              style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                    color: Colors.white,
                  ),
            ),
          ),
          const SizedBox(height: 8),
          const RealtimeConversationMessageView(),
        ],
      ),
    );
  }
}

class DialogBubbleTail extends StatelessWidget {
  const DialogBubbleTail({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: DialogBubbleTailPainter(),
      child: const SizedBox(
        width: 40,
        height: 16,
      ),
    );
  }
}

class DialogBubbleTailPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    // 下に向かって伸びる角丸の正三角形
    var path = Path()
      ..moveTo(0, 0)
      ..lineTo(size.width / 2, size.height)
      ..lineTo(size.width, 0)
      ..lineTo(0, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(DialogBubbleTailPainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(DialogBubbleTailPainter oldDelegate) => false;
}
