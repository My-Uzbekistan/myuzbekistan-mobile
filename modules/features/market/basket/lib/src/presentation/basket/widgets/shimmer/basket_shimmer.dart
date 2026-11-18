import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class BasketShimmer extends StatelessWidget {
  const BasketShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromDefault(
      child: Column(
        spacing: 8,
        children: [
          for (var index = 0; index < 3; index++)
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: context.appColors.background.elevation1,
                borderRadius: BorderRadius.circular(24),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 12,
                children: [
                  Row(
                    spacing: 8,
                    children: [
                      const ShimmerDefaultContainer(
                        height: 40,
                        width: 40,
                        radius: 12,
                      ),
                      const Expanded(
                        child: ShimmerDefaultContainer(height: 16, radius: 8),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 12,
                    children: [
                      const ShimmerDefaultContainer(
                        height: 80,
                        width: 80,
                        radius: 12,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          spacing: 8,
                          children: const [
                            ShimmerDefaultContainer(height: 14, radius: 7),
                            ShimmerDefaultContainer(
                              height: 14,
                              width: 120,
                              radius: 7,
                            ),
                            ShimmerDefaultContainer(
                              height: 14,
                              width: 80,
                              radius: 7,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
