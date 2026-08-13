import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:finance/src/core/extension.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

import 'near_brand_avatar.dart';
import 'near_brand_distance_badge.dart';

class NearBrandCard extends StatelessWidget {
  static const double height = 114;

  final Merchant merchant;
  final VoidCallback? onTap;

  const NearBrandCard({super.key, required this.merchant, this.onTap});

  @override
  Widget build(BuildContext context) {
    final distance = merchant.distance.formatDistance(
      meterLabel: context.localization.distanceM,
      kmLabel: context.localization.distanceKm,
    );
    final name = merchant.name.orEmpty();
    final category = merchant.description.orEmpty();
    final showCategory =
        category.isNotEmpty && category.toLowerCase() != name.toLowerCase();

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: Container(
        width: 160,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: context.appColors.fill.quaternary,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 12,
              children: [
                NearBrandAvatar(imageUrl: merchant.logo),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 4,
                  children: [
                    Text(
                      name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ).labelMd(color: context.appColors.textIconColor.primary),
                    if (showCategory)
                      Text(
                        category,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ).bodySm(
                        color: context.appColors.textIconColor.secondary,
                      ),
                  ],
                ),
              ],
            ),
            if (distance != null)
              Positioned(
                top: 0,
                right: 0,
                child: NearBrandDistanceBadge(distance: distance),
              ),
          ],
        ),
      ),
    );
  }
}
