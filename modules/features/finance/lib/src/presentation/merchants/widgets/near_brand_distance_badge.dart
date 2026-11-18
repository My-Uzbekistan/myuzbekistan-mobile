import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class NearBrandDistanceBadge extends StatelessWidget {
  final String distance;

  const NearBrandDistanceBadge({super.key, required this.distance});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      decoration: BoxDecoration(
        color: context.appColors.brandSeaBlue,
        borderRadius: BorderRadius.circular(56),
      ),
      child: Text(
        distance,
        maxLines: 1,
      ).labelSm(color: context.appColors.static.white),
    );
  }
}
