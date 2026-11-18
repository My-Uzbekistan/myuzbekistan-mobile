import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class MarketOrdersShimmer extends StatelessWidget {
  const MarketOrdersShimmer({super.key});

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
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 16,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 8,
                    children: [
                      ShimmerDefaultContainer(
                        height: 24,
                        width: 80,
                        radius: 8,
                      ),
                      ShimmerDefaultContainer(
                        height: 18,
                        width: 174,
                        radius: 6,
                      ),
                      ShimmerDefaultContainer(
                        height: 16,
                        width: 93,
                        radius: 6,
                      ),
                    ],
                  ),
                  const Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 12,
                    children: [
                      ShimmerDefaultContainer(
                        height: 80,
                        width: 80,
                        radius: 12,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          spacing: 8,
                          children: [
                            ShimmerDefaultContainer(
                              height: 18,
                              width: double.infinity,
                              radius: 6,
                            ),
                            ShimmerDefaultContainer(
                              height: 16,
                              width: 60,
                              radius: 6,
                            ),
                            ShimmerDefaultContainer(
                              height: 18,
                              width: 82,
                              radius: 6,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const ShimmerDefaultContainer(
                    height: 20,
                    width: 130,
                    radius: 6,
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
