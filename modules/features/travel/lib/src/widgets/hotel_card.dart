import 'dart:ui';

import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart' hide Toast;
import 'package:travel/src/core/extension.dart';

class HotelCard extends StatelessWidget {
  final MainPageContent hotel;
  final VoidCallback? onTap;

  const HotelCard({super.key, required this.hotel, this.onTap});

  @override
  Widget build(BuildContext context) {
    final location = hotel.region ?? "";
    final distance = _distanceText(context, hotel.distanceKm);
    final price = (hotel.price ?? 0) > 0 ? hotel.price!.amountFormatted() : "";
    final period = hotel.priceUnit ?? "";

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: SizedBox(
        width: 156,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _ImageCard(imageUrl: hotel.mainPhoto ?? "", rating: hotel.ratingAverage),
            const SizedBox(height: 8),
            Text(
              hotel.title ?? "",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ).bodyMd(color: context.appColors.textIconColor.primary),
            const SizedBox(height: 2),
            Row(
              children: [
                Flexible(
                  child: Text(
                    location,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ).bodySm(color: context.appColors.textIconColor.secondary),
                ),
                if (distance.isNotEmpty) ...[
                  const SizedBox(width: 6),
                  Text("•")
                      .bodySm(color: context.appColors.textIconColor.secondary),
                  const SizedBox(width: 6),
                  Text(
                    distance,
                    maxLines: 1,
                  ).bodySm(color: context.appColors.textIconColor.secondary),
                ],
              ],
            ),
            if (price.isNotEmpty) ...[
              const SizedBox(height: 8),
              Row(
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    price,
                    maxLines: 1,
                  ).labelMd(color: context.appColors.textIconColor.primary),
                  const SizedBox(width: 2),
                  Text(
                    context.localization.currency_som,
                    maxLines: 1,
                  ).bodySm(color: context.appColors.textIconColor.tertiary),
                ],
              ),
              if (period.isNotEmpty) ...[
                const SizedBox(height: 2),
                Text(
                  period,
                  maxLines: 1,
                ).bodySm(color: context.appColors.textIconColor.secondary),
              ],
            ],
          ],
        ),
      ),
    );
  }
}

String _distanceText(BuildContext context, double? distanceKm) {
  if (distanceKm == null || distanceKm == 0) return "";
  if (distanceKm < 0.5) {
    return "${(distanceKm * 100).floor()} ${context.localization.distanceM}";
  }
  return "${distanceKm.floor()} ${context.localization.distanceKm}";
}

class _ImageCard extends StatelessWidget {
  final String imageUrl;
  final double? rating;

  const _ImageCard({required this.imageUrl, this.rating});

  @override
  Widget build(BuildContext context) {
    final r = rating ?? 0;
    final ratingText = r <= 0
        ? ""
        : (r % 1 == 0 ? r.toInt().toString() : r.toStringAsFixed(1));

    return ClipRRect(
      borderRadius: BorderRadius.circular(24),
      child: Container(
        width: 156,
        height: 156,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          border: Border.all(
            color: context.appColors.service.onMedia.withValues(alpha: 0.12),
          ),
        ),
        child: Stack(
          children: [
            Positioned.fill(
              child: AppNetworkImage(
                imageUrl,
                fit: BoxFit.cover,
                placeholder: ColoredBox(
                  color: context.appColors.fill.quaternary,
                ),
              ),
            ),
            Positioned.fill(
              child: ColoredBox(
                color: context.appColors.service.scrim
                    .withValues(alpha: 0.16),
              ),
            ),
            if (ratingText.isNotEmpty)
              Positioned(
                left: 11,
                top: 11,
                child: _RatingBadge(rating: ratingText),
              ),
          ],
        ),
      ),
    );
  }
}

class _RatingBadge extends StatelessWidget {
  final String rating;

  const _RatingBadge({required this.rating});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(24),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
        child: Container(
          height: 28,
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
          decoration: BoxDecoration(
            color: context.appColors.service.onMedia,
            borderRadius: BorderRadius.circular(24),
            border: Border.all(color: context.appColors.service.onMedia),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Assets.svg.starFill.svg(width: 16, height: 16),
              const SizedBox(width: 4),
              Text(
                rating,
                maxLines: 1,
              ).labelSm(color: context.appColors.service.scrim),
            ],
          ),
        ),
      ),
    );
  }
}
