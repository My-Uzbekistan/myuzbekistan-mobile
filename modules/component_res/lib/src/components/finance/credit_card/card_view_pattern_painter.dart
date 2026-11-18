import 'package:flutter/material.dart';

class CardViewPatternPainter extends CustomPainter {
  final Color strokeColor;
  final Color glowColor;

  const CardViewPatternPainter({
    required this.strokeColor,
    required this.glowColor,
  });

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawCircle(
      const Offset(13, -7),
      32,
      Paint()
        ..color = glowColor
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 24),
    );

    final strokePaint =
        Paint()
          ..style = PaintingStyle.stroke
          ..strokeWidth = 1
          ..color = strokeColor;

    canvas.drawCircle(const Offset(7, -54), 110.5, strokePaint);
    canvas.drawCircle(const Offset(-5, -44), 110.5, strokePaint);
  }

  @override
  bool shouldRepaint(CardViewPatternPainter oldDelegate) =>
      oldDelegate.strokeColor != strokeColor ||
      oldDelegate.glowColor != glowColor;
}
