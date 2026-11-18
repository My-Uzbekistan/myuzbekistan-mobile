import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class CheckoutShimmer extends StatelessWidget {
  const CheckoutShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    Widget card(List<Widget> children) => Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: context.appColors.background.elevation1,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(spacing: 16, children: children),
    );

    return Shimmer.fromDefault(
      child: Column(
        spacing: 8,
        children: [
          card(const [
            ShimmerDefaultContainer(height: 16, width: 140, radius: 8),
            ShimmerDefaultContainer(height: 40, radius: 12),
            ShimmerDefaultContainer(height: 40, radius: 12),
            ShimmerDefaultContainer(height: 40, radius: 12),
          ]),
          card([
            for (var index = 0; index < 3; index++)
              Row(
                spacing: 12,
                children: const [
                  ShimmerDefaultContainer(
                    height: 80,
                    width: 80,
                    radius: 12,
                  ),
                  Expanded(
                    child: ShimmerDefaultContainer(height: 60, radius: 12),
                  ),
                ],
              ),
          ]),
          card(const [
            ShimmerDefaultContainer(height: 16, width: 120, radius: 8),
            ShimmerDefaultContainer(height: 64, radius: 12),
          ]),
        ],
      ),
    );
  }
}
