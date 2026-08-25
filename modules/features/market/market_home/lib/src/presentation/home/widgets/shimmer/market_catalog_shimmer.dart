import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class MarketCatalogShimmer extends StatelessWidget {
  const MarketCatalogShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        margin: const EdgeInsets.only(top: 8),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: context.appColors.background.elevation1,
        ),
        child: Shimmer.fromDefault(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ShimmerDefaultContainer(height: 24, width: 140, radius: 8),
              const SizedBox(height: 12),
              LayoutBuilder(
                builder: (context, constraints) {
                  final tileWidth = (constraints.maxWidth - 7) / 2;
                  return Wrap(
                    spacing: 7,
                    runSpacing: 12,
                    children: [
                      for (var index = 0; index < 4; index++)
                        ShimmerDefaultContainer(
                          height: 77,
                          width: tileWidth,
                          radius: 20,
                        ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
