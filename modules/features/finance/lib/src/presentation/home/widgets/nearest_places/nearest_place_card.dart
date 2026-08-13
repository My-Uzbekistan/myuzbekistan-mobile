import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:finance/src/core/extension.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

import 'nearest_place_distance_badge.dart';
import 'nearest_place_logo.dart';

const nearestPlaceCardWidth = 160.0;

class NearestPlaceCard extends StatelessWidget {
  final Merchant merchant;
  final VoidCallback? onTap;

  const NearestPlaceCard({super.key, required this.merchant, this.onTap});

  @override
  Widget build(BuildContext context) {
    final distance = merchant.distance.formatDistance(
      meterLabel: context.localization.distanceM,
      kmLabel: context.localization.distanceKm,
    );

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: nearestPlaceCardWidth,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: context.appColors.fill.quaternary,
        ),
        child: Column(
          spacing: 12,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                NearestPlaceLogo(url: merchant.logo),
                const Spacer(),
                if (distance != null) NearestPlaceDistanceBadge(text: distance),
              ],
            ),
            Column(
              spacing: 4,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  merchant.name.orEmpty(),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTypography.labelMd,
                ),
                Text(
                  merchant.type.orEmpty().trim(),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTypography.bodySm.copyWith(
                    color: context.appColors.textIconColor.secondary,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
