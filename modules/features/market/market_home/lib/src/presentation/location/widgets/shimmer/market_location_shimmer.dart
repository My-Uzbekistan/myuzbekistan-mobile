import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class MarketLocationShimmer extends StatelessWidget {
  const MarketLocationShimmer({super.key, this.rowCount = 8});

  final int rowCount;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromDefault(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
          rowCount,
          (index) => Container(
            height: 56,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            alignment: Alignment.centerLeft,
            child: ShimmerDefaultContainer(
              height: 22,
              width: 120 + (index % 3) * 40.0,
              radius: 8,
            ),
          ),
        ),
      ),
    );
  }
}
