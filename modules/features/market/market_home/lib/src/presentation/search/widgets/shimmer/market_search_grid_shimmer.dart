import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class MarketSearchGridShimmer extends StatelessWidget {
  const MarketSearchGridShimmer({super.key, this.itemCount = 4});

  final int itemCount;

  @override
  Widget build(BuildContext context) {
    final cardWidth = (MediaQuery.sizeOf(context).width - 48) / 2;

    return Shimmer.fromDefault(
      child: GridView.builder(
        padding: const EdgeInsets.all(16),
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: itemCount,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          mainAxisExtent: cardWidth + 84,
        ),
        itemBuilder: (context, index) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ShimmerDefaultContainer(
              height: cardWidth,
              width: cardWidth,
              radius: 24,
            ),
            const SizedBox(height: 14),
            ShimmerDefaultContainer(height: 16, width: cardWidth, radius: 6),
            const SizedBox(height: 6),
            const ShimmerDefaultContainer(height: 16, width: 100, radius: 6),
            const SizedBox(height: 10),
            const ShimmerDefaultContainer(height: 20, width: 120, radius: 6),
          ],
        ),
      ),
    );
  }
}
