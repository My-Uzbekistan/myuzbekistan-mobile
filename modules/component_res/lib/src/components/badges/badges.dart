import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class AppBadge extends StatelessWidget {
  const AppBadge({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(minHeight: 32),
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: context.appColors.fill.quaternary),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        spacing: 6,
        children: [
          Assets.svgIconCusine.toSvgImage(
              width: 20,
              colorFilter: ColorFilter.mode(
                  context.appColors.textIconColor.primary, BlendMode.srcIn)),
          Text(
            "Uzbek cousine",
            style: CustomTypography.bodyMd,
          )
        ],
      ),
    );
  }
}
