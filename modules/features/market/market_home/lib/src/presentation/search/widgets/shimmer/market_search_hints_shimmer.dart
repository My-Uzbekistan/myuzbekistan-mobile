import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class MarketSearchHintsShimmer extends StatelessWidget {
  const MarketSearchHintsShimmer({super.key, this.rowCount = 3});

  final int rowCount;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: context.appColors.background.base,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Shimmer.fromDefault(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 16,
          children: [
            const ShimmerDefaultContainer(height: 22, width: 140, radius: 8),
            ...List.generate(
              rowCount,
              (index) => Row(
                spacing: 8,
                children: [
                  const ShimmerDefaultContainer(
                    height: 24,
                    width: 24,
                    radius: 12,
                  ),
                  ShimmerDefaultContainer(
                    height: 18,
                    width: 120 + (index % 3) * 40.0,
                    radius: 6,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
