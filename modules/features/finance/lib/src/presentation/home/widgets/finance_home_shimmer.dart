import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class FinanceHomeShimmer extends StatelessWidget {
  const FinanceHomeShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromDefault(
      child: Column(
        spacing: 12,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ShimmerDefaultContainer(height: 188, width: double.maxFinite),
          ShimmerDefaultContainer(height: 184, width: double.maxFinite),
          ShimmerDefaultContainer(height: 182, width: double.maxFinite),
        ],
      ),
    );
  }
}
