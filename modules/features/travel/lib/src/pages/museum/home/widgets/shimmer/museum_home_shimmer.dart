import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class MuseumHomeShimmer extends StatelessWidget {
  const MuseumHomeShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromDefault(
      child: Column(
        spacing: 12,
        children: [
          _section(
            context,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: const Row(
                spacing: 16,
                children: [
                  ShimmerDefaultContainer(height: 280, width: 220),
                  ShimmerDefaultContainer(height: 280, width: 220),
                ],
              ),
            ),
          ),
          _section(
            context,
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                spacing: 12,
                children: [
                  ShimmerDefaultContainer(height: 252),
                  ShimmerDefaultContainer(height: 252),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _section(BuildContext context, {required Widget child}) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: context.appColors.background.elevation1,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 12,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: ShimmerDefaultContainer(height: 24, width: 180, radius: 8),
          ),
          child,
        ],
      ),
    );
  }
}
