import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class PremiumFeatureRow extends StatelessWidget {
  final String title;
  final String description;

  const PremiumFeatureRow({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        spacing: 11,
        children: [
          ColorFiltered(
            colorFilter: ColorFilter.mode(
              context.appColors.brand,
              BlendMode.srcIn,
            ),
            child: Assets.svg.premiumFeatureCheck.svg(width: 24, height: 24),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 6,
              children: [
                Text(title).labelLg(color: context.appColors.brand),
                Text(
                  description,
                ).bodyMd(color: context.appColors.textIconColor.secondary),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
