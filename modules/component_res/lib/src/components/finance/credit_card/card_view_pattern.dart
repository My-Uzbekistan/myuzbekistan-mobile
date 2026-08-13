import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

import 'card_view_pattern_painter.dart';

class CardViewPattern extends StatelessWidget {
  const CardViewPattern({super.key});

  @override
  Widget build(BuildContext context) {
    final white = context.appColors.static.white;
    return CustomPaint(
      painter: CardViewPatternPainter(
        strokeColor: white.withValues(alpha: 0.24),
        glowColor: white.withValues(alpha: 0.62),
      ),
    );
  }
}
