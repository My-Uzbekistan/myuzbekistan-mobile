import 'dart:math';

import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RoundedButton extends StatelessWidget {
  static RoundedButton closeButton({VoidCallback? onPressed}) {
    return RoundedButton(
      assetsSvgIcon: Assets.svgIconClose,
      onPressed: onPressed,
    );
  }

  static RoundedButton arrowLeft({VoidCallback? onPressed}) {
    return RoundedButton(
      assetsSvgIcon: Assets.svgIconArrowRight,
      onPressed: onPressed,
      angle: pi,
    );
  }

  static RoundedButton edit({VoidCallback? onPressed}) {
    return RoundedButton(
      assetsSvgIcon: Assets.svgIconEditPen,
      onPressed: onPressed,
    );
  }

  static RoundedButton check({VoidCallback? onPressed}) {
    return RoundedButton(
      assetsSvgIcon: Assets.svgIconCheck,
      onPressed: onPressed,
    );
  }

  final String assetsSvgIcon;
  final VoidCallback? onPressed;
  final double angle;
  final bool hideShadow;
  final Color? backgroundColor;
  final Color? iconColor;

  const RoundedButton(
      {super.key,
      required this.assetsSvgIcon,
      this.onPressed,
      this.angle = 0,
      this.backgroundColor,
      this.iconColor,
      this.hideShadow = false});

  @override
  Widget build(BuildContext context) {
    final bgColor = backgroundColor ?? context.appColors.background.elevation3;
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: onPressed != null
          ? () {
              HapticFeedback.mediumImpact();
              onPressed?.call();
            }
          : null,
      child: ClipRRect(
        clipBehavior: Clip.none,
        child: CircleAvatar(
          radius: 22,
          backgroundColor: bgColor,
          child: Center(
            child: Transform.rotate(
              angle: angle,
              child: assetsSvgIcon.toSvgImage(
                  width: 20,
                  height: 20,
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      iconColor ?? context.appColors.textIconColor.primary,
                      BlendMode.srcIn)),
            ),
          ),
        ).shadow(context, backgroundColor: bgColor, hideShadow: hideShadow),
      ),
    );
  }
}
