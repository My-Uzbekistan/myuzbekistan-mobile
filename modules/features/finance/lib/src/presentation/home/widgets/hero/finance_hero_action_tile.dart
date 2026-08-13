import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class FinanceHeroActionTile extends StatelessWidget {
  final String label;
  final String iconPath;

  const FinanceHeroActionTile({
    super.key,
    required this.label,
    required this.iconPath,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8,
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 28,
          width: 28,
          child: iconPath.toSvgImage(
            width: 28,
            height: 28,
            colorFilter: ColorFilter.mode(
              context.appColors.brand,
              BlendMode.srcIn,
            ),
          ),
        ),
        Text(
          label,
          maxLines: 1,
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: CustomTypography.labelSm.copyWith(
            color: context.appColors.static.white,
          ),
        ),
      ],
    );
  }
}
