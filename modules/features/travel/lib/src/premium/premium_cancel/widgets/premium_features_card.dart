import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:travel/src/premium/premium_cancel/widgets/premium_feature_row.dart';

class PremiumFeaturesCard extends StatelessWidget {
  final List<PremiumFeatureModel> features;

  const PremiumFeaturesCard({super.key, required this.features});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: context.appColors.background.elevation1,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: features
            .map(
              (feature) => PremiumFeatureRow(
                title: feature.title ?? "",
                description: feature.description ?? "",
              ),
            )
            .toList(),
      ),
    );
  }
}
