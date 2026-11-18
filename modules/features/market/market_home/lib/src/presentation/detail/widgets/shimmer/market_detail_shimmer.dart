import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:market_home/src/presentation/detail/widgets/market_detail_section.dart';

class MarketDetailShimmer extends StatelessWidget {
  const MarketDetailShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromDefault(
      child: Column(
        children: [
          MarketDetailSection(
            squareTop: true,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                ShimmerDefaultContainer(height: 16, width: 180, radius: 6),
                SizedBox(height: 8),
                ShimmerDefaultContainer(height: 22, radius: 6),
                SizedBox(height: 6),
                ShimmerDefaultContainer(height: 22, width: 220, radius: 6),
                SizedBox(height: 16),
                ShimmerDefaultContainer(height: 28, width: 160, radius: 8),
              ],
            ),
          ),
          MarketDetailSection(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                ShimmerDefaultContainer(height: 28, width: 140, radius: 8),
                SizedBox(height: 12),
                ShimmerDefaultContainer(height: 22, radius: 6),
                SizedBox(height: 6),
                ShimmerDefaultContainer(height: 22, radius: 6),
                SizedBox(height: 6),
                ShimmerDefaultContainer(height: 22, width: 240, radius: 6),
                SizedBox(height: 16),
                ShimmerDefaultContainer(height: 44, radius: 32),
              ],
            ),
          ),
          MarketDetailSection(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                ShimmerDefaultContainer(height: 28, width: 180, radius: 8),
                SizedBox(height: 12),
                ShimmerDefaultContainer(height: 42, radius: 8),
                SizedBox(height: 12),
                ShimmerDefaultContainer(height: 42, radius: 8),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
