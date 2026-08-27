import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

class MuseumRatingBadge extends StatelessWidget {
  const MuseumRatingBadge({
    super.key,
    required this.rating,
    this.iconSize = 16,
  });

  final double rating;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 28,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: context.appColors.static.white,
        border: Border.all(color: context.appColors.static.white),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        spacing: 4,
        children: [
          SizedBox.square(
            dimension: iconSize,
            child: Assets.svg.starLeadingHalfFilled.path.toSvgImage(
              fit: BoxFit.contain,
              tintColor: context.appColors.static.black,
            ),
          ),
          Text(
            NumberFormat(
              "0.0",
              Localizations.localeOf(context).languageCode,
            ).format(rating),
          ).labelSm(color: context.appColors.static.black),
        ],
      ),
    );
  }
}
