import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class CartGlyphIcon extends StatelessWidget {
  static const double boxSize = 24;

  final CartGlyph glyph;
  final Color color;

  const CartGlyphIcon({super.key, required this.glyph, required this.color});

  @override
  Widget build(BuildContext context) {
    final isPlus = glyph == CartGlyph.plus;
    return SizedBox.square(
      dimension: boxSize,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: isPlus ? 14 : 18,
            height: 2,
            color: color,
          ),
          if (isPlus)
            Container(
              width: 2,
              height: 14,
              color: color,
            ),
        ],
      ),
    );
  }
}
