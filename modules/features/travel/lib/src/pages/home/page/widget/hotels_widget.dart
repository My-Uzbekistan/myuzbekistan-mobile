import 'dart:ui';

import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class HotelsWidget extends StatelessWidget {
  final List<HotelData> hotels;
  final VoidCallback? onSeeAll;
  final ValueChanged<HotelData>? onHotelTap;

  const HotelsWidget({
    super.key,
    required this.hotels,
    this.onSeeAll,
    this.onHotelTap,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        margin: const EdgeInsets.only(top: 12),
        padding: const EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: context.appColors.background.elevation1,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "Отели",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ).h3(),
                  ),
                  const SizedBox(width: 16),
                  GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: onSeeAll,
                    child: Text("Все")
                        .bodyLg(color: context.appColors.brandSeaBlue),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 244,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemCount: hotels.length,
                separatorBuilder: (_, __) => const SizedBox(width: 16),
                itemBuilder: (context, index) {
                  final hotel = hotels[index];
                  return _HotelCard(
                    hotel: hotel,
                    onTap: onHotelTap == null ? null : () => onHotelTap!(hotel),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _HotelCard extends StatelessWidget {
  final HotelData hotel;
  final VoidCallback? onTap;

  const _HotelCard({required this.hotel, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: SizedBox(
        width: 156,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _ImageCard(hotel: hotel),
            const SizedBox(height: 8),
            Text(
              hotel.name,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ).bodyMd(color: context.appColors.textIconColor.primary),
            const SizedBox(height: 2),
            Row(
              children: [
                Flexible(
                  child: Text(
                    hotel.location,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ).bodySm(color: context.appColors.textIconColor.secondary),
                ),
                const SizedBox(width: 6),
                Text("•")
                    .bodySm(color: context.appColors.textIconColor.secondary),
                const SizedBox(width: 6),
                Text(
                  hotel.distance,
                  maxLines: 1,
                ).bodySm(color: context.appColors.textIconColor.secondary),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  hotel.price,
                  maxLines: 1,
                ).labelMd(color: context.appColors.textIconColor.primary),
                const SizedBox(width: 2),
                Text(
                  hotel.currency,
                  maxLines: 1,
                ).bodySm(color: context.appColors.textIconColor.tertiary),
              ],
            ),
            const SizedBox(height: 2),
            Text(
              hotel.period,
              maxLines: 1,
            ).bodySm(color: context.appColors.textIconColor.secondary),
          ],
        ),
      ),
    );
  }
}

class _ImageCard extends StatelessWidget {
  final HotelData hotel;

  const _ImageCard({required this.hotel});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(24),
      child: Container(
        width: 156,
        height: 156,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          border: Border.all(
            color: context.appColors.static.white.withValues(alpha: 0.12),
          ),
        ),
        child: Stack(
          children: [
            Positioned.fill(
              child: ExtendedImage.network(
                hotel.imageUrl,
                fit: BoxFit.cover,
                loadStateChanged: (state) {
                  switch (state.extendedImageLoadState) {
                    case LoadState.completed:
                      return AnimatedOpacity(
                        opacity: 1.0,
                        duration: const Duration(milliseconds: 200),
                        child: state.completedWidget,
                      );
                    default:
                      return Container(
                        color: context.appColors.fill.quaternary,
                      );
                  }
                },
              ),
            ),
            Positioned.fill(
              child: ColoredBox(
                color: const Color(0xFF14191A).withValues(alpha: 0.16),
              ),
            ),
            Positioned(
              left: 11,
              top: 11,
              child: _RatingBadge(rating: hotel.rating),
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
            color: context.appColors.static.white,
            borderRadius: BorderRadius.circular(24),
            border: Border.all(color: context.appColors.static.white),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Assets.svg.starFill.svg(width: 16, height: 16),
              const SizedBox(width: 4),
              Text(
                rating,
                maxLines: 1,
              ).labelSm(color: context.appColors.static.black),
            ],
          ),
        ),
      ),
    );
  }
}

class HotelData {
  final String imageUrl;
  final String name;
  final String location;
  final String distance;
  final String rating;
  final String price;
  final String currency;
  final String period;

  const HotelData({
    required this.imageUrl,
    required this.name,
    required this.location,
    required this.distance,
    required this.rating,
    required this.price,
    this.currency = "сум",
    this.period = "1 ночь",
  });
}
