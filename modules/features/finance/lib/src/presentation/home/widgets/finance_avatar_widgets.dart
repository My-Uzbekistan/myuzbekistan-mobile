import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class FinanceTopCardItemWidget extends StatelessWidget {
  final String svgAssets;
  final String text;
  final GestureTapCallback? onTap;

  const FinanceTopCardItemWidget({
    super.key,
    required this.text,
    required this.svgAssets,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: context.appColors.background.elevation1,
        ),
        alignment: Alignment.center,
        child: Column(
          spacing: 8,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            svgAssets.toSvgImage(
              width: 24,
              colorFilter: ColorFilter.mode(
                context.appColors.brand,
                BlendMode.srcIn,
              ),
            ),
            Text(
              text,
              maxLines: 1,
              style: CustomTypography.labelSm,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
