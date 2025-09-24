import 'package:flutter/material.dart';

class TextLineChecker {
  static bool isMoreThan3Lines(String text, double maxWidth, TextStyle style) {
    final textPainter = TextPainter(
      text: TextSpan(text: text, style: style),
      textDirection: TextDirection.ltr,
      maxLines: null, // barcha qatorlarni hisoblash
    )..layout(maxWidth: maxWidth);

    int lineCount = textPainter.computeLineMetrics().length;
    return lineCount > 3;
  }
}
