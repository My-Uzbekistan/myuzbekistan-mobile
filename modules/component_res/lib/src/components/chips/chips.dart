import 'dart:math';

import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

mixin class AppChips {
  static Widget appChipsLeftRightIcon({
    required String text,
    required Widget leftIcon,
    Widget? rightIcon,
    Color? contentColor,
    Color? backgroundColor,
    final VoidCallback? onTap,
  }) =>
      AppChipsLeftRightIcon(
        text: text,
        leftIcon: leftIcon,
        rightIcon: rightIcon,
        contentColor: contentColor,
        backgroundColor: backgroundColor,
        onTap: onTap,
      );
}

Widget appChipsText({required String text}) => Text(
      text,
      maxLines: 1,
    ).labelSm();

class AppChipsLeftRightIcon extends StatelessWidget {
  final Widget leftIcon;
  final Widget? rightIcon;
  final String text;
  final Color? contentColor;
  final Color? backgroundColor;
  final VoidCallback? onTap;

  const AppChipsLeftRightIcon(
      {super.key,
      required this.text,
      required this.leftIcon,
      this.rightIcon,
      this.backgroundColor,
      this.contentColor,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    Widget rightIcon = this.rightIcon ??
        Transform.rotate(
          angle: pi / 2,
          child: Assets.svgIconArrowRight.toSvgImage(fit: BoxFit.cover),
        );
    return InkWell(
      onTap: onTap != null
          ? () {
              HapticFeedback.mediumImpact();
              onTap?.call();
            }
          : null,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 7),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: backgroundColor ?? context.appColors.brand),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 16,
              width: 16,
              child: leftIcon,
            ),
            const SizedBox(
              width: 4,
            ),
            Flexible(
              child: Text(
                text,
                maxLines: 2,
              ).labelSm(color: contentColor ?? Colors.white),
            ),
            const SizedBox(
              width: 6,
            ),
            SizedBox(
              height: 16,
              width: 16,
              child: contentColor != null
                  ? ColorFiltered(
                      colorFilter:
                          ColorFilter.mode(contentColor!, BlendMode.srcIn),
                      child: rightIcon,
                    )
                  : rightIcon,
            )
          ],
        ),
      ),
    );
  }
}
