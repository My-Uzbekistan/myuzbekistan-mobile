import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class MarketProductsShimmer extends StatelessWidget {
  const MarketProductsShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        margin: const EdgeInsets.only(top: 8),
        padding: const EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: context.appColors.background.elevation1,
        ),
        child: Shimmer.fromDefault(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: ShimmerDefaultContainer(
                  height: 24,
                  width: 180,
                  radius: 8,
                ),
              ),
              const SizedBox(height: 12),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    for (var index = 0; index < 3; index++) ...[
                      if (index > 0) const SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          ShimmerDefaultContainer(
                            height: 156,
                            width: 156,
                            radius: 24,
                          ),
                          SizedBox(height: 14),
                          ShimmerDefaultContainer(
                            height: 16,
                            width: 156,
                            radius: 6,
                          ),
                          SizedBox(height: 6),
                          ShimmerDefaultContainer(
                            height: 16,
                            width: 100,
                            radius: 6,
                          ),
                          SizedBox(height: 10),
                          ShimmerDefaultContainer(
                            height: 20,
                            width: 120,
                            radius: 6,
                          ),
                        ],
                      ),
                    ],
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
