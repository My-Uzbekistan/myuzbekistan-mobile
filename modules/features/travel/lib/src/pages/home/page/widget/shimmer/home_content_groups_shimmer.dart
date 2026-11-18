import 'package:flutter/material.dart';

import 'home_horizontal_section_shimmer.dart';

class HomeContentGroupsShimmer extends StatelessWidget {
  final int sections;

  const HomeContentGroupsShimmer({super.key, this.sections = 2});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        sections,
        (_) => const HomeHorizontalSectionShimmer(
          cardWidth: 156,
          imageHeight: 200,
          listHeight: 262,
          withCaptions: true,
        ),
      ),
    );
  }
}
