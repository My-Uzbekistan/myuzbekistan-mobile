import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class MuseumDetailShimmer extends StatelessWidget {
  const MuseumDetailShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromDefault(
      child: Column(
        children: [
          _card(
            context,
            child: const Column(
              spacing: 12,
              children: [
                ShimmerDefaultContainer(height: 36, radius: 8),
                ShimmerDefaultContainer(height: 18, width: 180, radius: 6),
                ShimmerDefaultContainer(height: 42, radius: 8),
              ],
            ),
          ),
          _card(
            context,
            child: const Column(
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

  Widget _card(BuildContext context, {required Widget child}) {
    return Container(
      margin: const EdgeInsets.only(left: 4, right: 4, bottom: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: context.appColors.background.elevation1,
        borderRadius: BorderRadius.circular(24),
      ),
      child: child,
    );
  }
}
