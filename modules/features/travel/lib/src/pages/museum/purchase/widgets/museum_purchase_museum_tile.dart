import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:travel/src/core/extension.dart';
import 'package:travel/src/pages/museum/widgets/museum_rating_badge.dart';
import 'package:shared/shared.dart';

class MuseumPurchaseMuseumTile extends StatelessWidget {
  const MuseumPurchaseMuseumTile({super.key, required this.detail});

  final MuseumDetail detail;

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 12,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: SizedBox.square(
            dimension: 64,
            child: Stack(
              fit: StackFit.expand,
              children: [
                AppNetworkImage(
                  detail.media.firstOrNull ?? "",
                  fit: BoxFit.cover,
                  placeholder: Assets.png.defaultContentImage.image(
                    fit: BoxFit.cover,
                  ),
                ),
                if (detail.rating > 0)
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(4),
                      child: FittedBox(
                        child: MuseumRatingBadge(
                          rating: detail.rating,
                          iconSize: 12,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 4,
            children: [
              Text(
                detail.title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ).labelMd(color: colors.textIconColor.primary),
              if (detail.city.isNotEmpty)
                Text(
                  detail.city,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ).bodySm(color: colors.textIconColor.tertiary),
              Row(
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                spacing: 2,
                children: [
                  Text(
                    context.localization.museum_price_from(
                      detail.priceFrom.amountFormatted(),
                    ),
                  ).labelMd(color: colors.textIconColor.primary),
                  Text(
                    context.localization.museum_currency_som,
                  ).bodySm(color: colors.textIconColor.tertiary),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
