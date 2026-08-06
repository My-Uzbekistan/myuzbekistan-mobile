import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

import 'home_section_card_shimmer.dart';

class HomeHorizontalSectionShimmer extends StatelessWidget {
  final double cardWidth;
  final double imageHeight;
  final double listHeight;
  final bool hasSubtitle;
  final bool hasSeeAll;
  final bool withCaptions;
  final int itemCount;

  const HomeHorizontalSectionShimmer({
    super.key,
    required this.cardWidth,
    required this.imageHeight,
    required this.listHeight,
    this.hasSubtitle = false,
    this.hasSeeAll = true,
    this.withCaptions = false,
    this.itemCount = 4,
  });

  @override
  Widget build(BuildContext context) {
    return HomeSectionCardShimmer(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
            child: _title(),
          ),
          SizedBox(
            height: listHeight,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: itemCount,
              separatorBuilder: (_, __) => const SizedBox(width: 16),
              itemBuilder: (_, __) => _card(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _title() {
    if (hasSubtitle) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          ShimmerDefaultContainer(height: 22, width: 150, radius: 8),
          SizedBox(height: 4),
          ShimmerDefaultContainer(height: 16, width: 220, radius: 8),
        ],
      );
    }
    return Row(
      children: [
        const ShimmerDefaultContainer(height: 22, width: 130, radius: 8),
        const Spacer(),
        if (hasSeeAll)
          const ShimmerDefaultContainer(height: 16, width: 56, radius: 8),
      ],
    );
  }

  Widget _card() {
    final image = ShimmerDefaultContainer(
      height: imageHeight,
      width: cardWidth,
      radius: 24,
    );
    if (!withCaptions) return image;
    return SizedBox(
      width: cardWidth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          image,
          const SizedBox(height: 8),
          ShimmerDefaultContainer(height: 14, width: cardWidth * 0.8, radius: 8),
          const SizedBox(height: 6),
          ShimmerDefaultContainer(
            height: 12,
            width: cardWidth * 0.55,
            radius: 8,
          ),
          const SizedBox(height: 8),
          ShimmerDefaultContainer(
            height: 14,
            width: cardWidth * 0.45,
            radius: 8,
          ),
        ],
      ),
    );
  }
}
