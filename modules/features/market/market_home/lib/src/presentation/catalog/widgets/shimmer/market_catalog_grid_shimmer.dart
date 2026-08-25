import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class MarketCatalogGridShimmer extends StatelessWidget {
  const MarketCatalogGridShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: context.appColors.background.elevation1,
      ),
      child: Shimmer.fromDefault(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final tileWidth = (constraints.maxWidth - 8) / 2;
            return Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                for (var index = 0; index < 12; index++)
                  ShimmerDefaultContainer(
                    height: 77,
                    width: tileWidth,
                    radius: 20,
                  ),
              ],
            );
          },
        ),
      ),
    );
  }
}
