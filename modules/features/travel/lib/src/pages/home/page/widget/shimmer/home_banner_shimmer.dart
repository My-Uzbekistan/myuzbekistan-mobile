import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class HomeBannerShimmer extends StatelessWidget {
  const HomeBannerShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: FractionallySizedBox(
        widthFactor: 0.86,
        child: Shimmer.fromDefault(
          child: const ShimmerDefaultContainer(height: 100, radius: 24),
        ),
      ),
    );
  }
}
