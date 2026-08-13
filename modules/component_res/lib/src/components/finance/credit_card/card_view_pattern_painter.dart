import 'package:flutter/material.dart';

class CardViewPatternPainter extends CustomPainter {
  final Color strokeColor;
  final Color glowColor;

  const CardViewPatternPainter({
    required this.strokeColor,
    required this.glowColor,
  });

  static const _glowCenter = Offset(13, -7);
  static const _glowRadius = 32.0;
  static const _glowBlurSigma = 24.0;
  static const _circleRadius = 110.5;
  static const _firstCircleCenter = Offset(7, -54);
  static const _secondCircleCenter = Offset(-5, -44);

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawCircle(
      _glowCenter,
      _glowRadius,
      Paint()
        ..color = glowColor
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, _glowBlurSigma),
    );

    final strokePaint =
        Paint()
          ..style = PaintingStyle.stroke
          ..strokeWidth = 1
          ..color = strokeColor;

    canvas.drawCircle(_firstCircleCenter, _circleRadius, strokePaint);
    canvas.drawCircle(_secondCircleCenter, _circleRadius, strokePaint);
  }

  @override
  bool shouldRepaint(CardViewPatternPainter oldDelegate) =>
      oldDelegate.strokeColor != strokeColor ||
      oldDelegate.glowColor != glowColor;
}
