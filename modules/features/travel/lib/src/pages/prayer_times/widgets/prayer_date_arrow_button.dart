import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class PrayerDateArrowButton extends StatelessWidget {
  const PrayerDateArrowButton({
    super.key,
    required this.assetPath,
    this.onTap,
  });

  final String assetPath;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: SizedBox(
        width: 56,
        height: 56,
        child: Center(
          child: assetPath.toSvgImage(
            width: 24,
            height: 24,
            colorFilter: ColorFilter.mode(
              context.appColors.textIconColor.primary,
              BlendMode.srcIn,
            ),
          ),
        ),
      ).shadow(context, borderRadius: BorderRadius.circular(20)),
    );
  }
}
