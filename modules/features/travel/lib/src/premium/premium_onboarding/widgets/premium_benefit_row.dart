import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class PremiumBenefitRow extends StatelessWidget {
  final String title;

  const PremiumBenefitRow({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        spacing: 8,
        children: [
          Assets.svg.premiumFeatureCheck.svg(width: 24, height: 24),
          Flexible(
            child: Text(
              title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ).labelLg(color: context.appColors.static.white),
          ),
        ],
      ),
    );
  }
}
