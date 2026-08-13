import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class NearestPlaceDistanceBadge extends StatelessWidget {
  final String text;

  const NearestPlaceDistanceBadge({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(56),
        color: context.appColors.brand,
      ),
      child: Text(
        text,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: CustomTypography.labelSm.copyWith(
          color: context.appColors.static.white,
        ),
      ),
    );
  }
}
