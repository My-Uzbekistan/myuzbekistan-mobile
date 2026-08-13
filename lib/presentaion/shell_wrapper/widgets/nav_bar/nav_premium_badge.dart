import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class NavPremiumBadge extends StatelessWidget {
  const NavPremiumBadge({super.key});

  static const double size = 16;
  static const double _glyphSize = 12;
  static const double _borderWidth = 1;
  static const double _glowBlur = 10;
  static const Offset _glowOffset = Offset(0, 2);

  @override
  Widget build(BuildContext context) {
    final yellow = context.appColors.colors.yellow;

    return Container(
      width: size,
      height: size,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: yellow,
        shape: BoxShape.circle,
        border: Border.all(
          color: context.appColors.stroke.opaque,
          width: _borderWidth,
        ),
        boxShadow: [
          BoxShadow(color: yellow, blurRadius: _glowBlur, offset: _glowOffset),
        ],
      ),
      child: Assets.svg.premiumBadge.svg(
        width: _glyphSize,
        height: _glyphSize,
      ),
    );
  }
}
