import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:travel/src/core/extension.dart';
import 'package:travel/src/pages/museum/widgets/museum_rating_badge.dart';
import 'package:shared/shared.dart';

class MuseumCardTile extends StatelessWidget {
  const MuseumCardTile({
    super.key,
    required this.museum,
    this.onTap,
    this.onFavoriteTap,
  });

  final MuseumCard museum;
  final VoidCallback? onTap;
  final VoidCallback? onFavoriteTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(24),
        child: SizedBox(
          height: 252,
          width: double.infinity,
          child: Stack(
            fit: StackFit.expand,
            children: [
              AppNetworkImage(
                museum.image,
                fit: BoxFit.cover,
                loadingWidget: Shimmer.fromDefault(
                  child: const ShimmerDefaultContainer(
                    height: double.maxFinite,
                    width: double.maxFinite,
                    radius: 0,
                  ),
                ),
                placeholder: Assets.png.defaultContentImage.image(
                  fit: BoxFit.cover,
                ),
              ),
              DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      context.appColors.service.scrim.withValues(alpha: 0.16),
                      context.appColors.service.scrim,
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 16,
                right: 16,
                bottom: 16,
                child: _content(context),
              ),
              Positioned(
                left: 16,
                top: 16,
                child:
                    museum.rating > 0
                        ? MuseumRatingBadge(rating: museum.rating)
                        : const SizedBox.shrink(),
              ),
              if (onFavoriteTap != null)
                Positioned(
                  right: 16,
                  top: 16,
                  child: RoundedButton(
                    onPressed: onFavoriteTap,
                    assetsSvgIcon:
                        museum.isFavorite
                            ? Assets.svg.iconFilledHeard.path
                            : Assets.svg.outlineHeard.path,
                    iconColor:
                        museum.isFavorite ? context.appColors.colors.red : null,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _content(BuildContext context) {
    final onMedia = context.appColors.service.onMedia;
    final onMediaSecondary = onMedia.withValues(alpha: 0.56);
    final details = [
      if (museum.city.isNotEmpty) museum.city,
      if (museum.distanceKm != null)
        context.localization.museum_distance_km(
          museum.distanceKm!.amountFormatted(withRemain: true),
        ),
      if (museum.reviewsCount > 0)
        context.localization.museum_reviews_count(museum.reviewsCount),
    ].join(" • ");

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 12,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 4,
          children: [
            Text(
              museum.title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ).labelLg(color: onMedia),
            if (details.isNotEmpty)
              Text(
                details,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ).bodySm(color: onMediaSecondary),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Text(
              context.localization.museum_price_from(
                museum.priceFrom.amountFormatted(),
              ),
            ).labelLg(color: onMedia),
            const SizedBox(width: 2),
            Text(
              context.localization.museum_currency_som,
            ).bodySm(color: onMediaSecondary),
            const Spacer(),
            if (museum.openingHours.orEmpty().isNotEmpty)
              Flexible(
                child: Text(
                  museum.openingHours!,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ).bodySm(color: onMediaSecondary),
              ),
          ],
        ),
      ],
    );
  }
}
