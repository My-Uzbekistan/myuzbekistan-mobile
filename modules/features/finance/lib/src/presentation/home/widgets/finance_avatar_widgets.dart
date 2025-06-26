import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class FinanceAvatarWidgets extends StatelessWidget {
  final String svgAssets;
  final String text;
  final GestureTapCallback? onTap;

  const FinanceAvatarWidgets({
    super.key,
    required this.text,
    required this.svgAssets,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: 80,
        child: Column(
          spacing: 8,
          children: [
            CircleAvatar(
              radius: 24,
              backgroundColor: context.appColors.brand,

              child: svgAssets.toSvgImage(
                width: 24,
                colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
              ),
            ),
            Text(text, maxLines: 1, style: CustomTypography.labelSm),
          ],
        ),
      ),
    );
  }
}
