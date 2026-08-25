import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class FavoritesGridShimmer extends StatelessWidget {
  const FavoritesGridShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: context.appColors.background.elevation1,
      ),
      child: Shimmer.fromDefault(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final cardWidth = (constraints.maxWidth - 16) / 2;
            return Wrap(
              spacing: 16,
              runSpacing: 16,
              children: [
                for (var index = 0; index < 6; index++)
                  SizedBox(
                    width: cardWidth,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ShimmerDefaultContainer(
                          height: cardWidth,
                          width: cardWidth,
                          radius: 24,
                        ),
                        const SizedBox(height: 14),
                        ShimmerDefaultContainer(
                          height: 16,
                          width: cardWidth,
                          radius: 6,
                        ),
                        const SizedBox(height: 6),
                        const ShimmerDefaultContainer(
                          height: 16,
                          width: 100,
                          radius: 6,
                        ),
                        const SizedBox(height: 10),
                        const ShimmerDefaultContainer(
                          height: 20,
                          width: 120,
                          radius: 6,
                        ),
                      ],
                    ),
                  ),
              ],
            );
          },
        ),
      ),
    );
  }
}
