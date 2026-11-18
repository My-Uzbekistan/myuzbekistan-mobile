import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:travel/src/pages/museum/detail/widgets/museum_detail_section.dart';

class MuseumDetailShimmer extends StatelessWidget {
  const MuseumDetailShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromDefault(
      child: const Column(
        children: [
          MuseumDetailSection(
            squareTop: true,
            child: Column(
              spacing: 12,
              children: [
                ShimmerDefaultContainer(height: 36, radius: 8),
                ShimmerDefaultContainer(height: 18, width: 180, radius: 6),
                ShimmerDefaultContainer(height: 42, radius: 8),
              ],
            ),
          ),
          MuseumDetailSection(
            child: Column(
              spacing: 12,
              children: [
                ShimmerDefaultContainer(height: 28, width: 160, radius: 8),
                ShimmerDefaultContainer(height: 66, radius: 8),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
