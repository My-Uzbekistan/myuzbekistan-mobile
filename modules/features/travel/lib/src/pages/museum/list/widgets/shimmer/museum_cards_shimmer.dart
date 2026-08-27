import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class MuseumCardsShimmer extends StatelessWidget {
  const MuseumCardsShimmer({super.key, this.itemCount = 3});

  final int itemCount;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromDefault(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          spacing: 12,
          children: [
            for (var index = 0; index < itemCount; index++)
              const ShimmerDefaultContainer(height: 252),
          ],
        ),
      ),
    );
  }
}
