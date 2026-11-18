import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:market_home/src/core/extension.dart';
import 'package:shared/shared.dart';

class MarketOrderItemTile extends StatelessWidget {
  const MarketOrderItemTile({super.key, required this.item});

  final MarketOrderItem item;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 12,
      children: [
        _image(context),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 4,
            children: [
              Text(
                item.name,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ).labelMd(color: context.appColors.textIconColor.primary),
              if (item.categoryName.isNotEmpty)
                Text(
                  item.categoryName,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ).bodySm(color: context.appColors.textIconColor.secondary),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    mainAxisSize: MainAxisSize.min,
                    spacing: 2,
                    children: [
                      Text(
                        item.price.amountFormatted(),
                      ).labelMd(color: context.appColors.textIconColor.primary),
                      Text(
                        context.localization.market_currency_som,
                      ).bodySm(color: context.appColors.textIconColor.tertiary),
                    ],
                  ),
                  const Spacer(),
                  _quantityBadge(context),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _image(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.31),
        border: Border.all(
          color: context.appColors.static.white.withValues(alpha: 0.12),
          width: 0.51,
        ),
      ),
      child: Stack(
        children: [
          Positioned.fill(
            child: item.photo.isEmpty
                ? Assets.png.defaultContentImage.image(fit: BoxFit.cover)
                : ProductCardImage(imageUrl: item.photo),
          ),
          Positioned.fill(
            child: ColoredBox(
              color: context.appColors.static.black.withValues(alpha: 0.16),
            ),
          ),
          if (item.hasRating)
            Positioned(left: 6.15, top: 6.15, child: _ratingBadge(context)),
        ],
      ),
    );
  }

  Widget _ratingBadge(BuildContext context) {
    final langCode = Localizations.localeOf(context).languageCode;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5.13, vertical: 3.08),
      decoration: BoxDecoration(
        color: context.appColors.static.white,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: context.appColors.static.white, width: 0.51),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        spacing: 2.05,
        children: [
          Assets.svg.starFill.path.toSvgImage(
            width: 8.21,
            height: 8.21,
            fit: BoxFit.contain,
            tintColor: context.appColors.static.black,
          ),
          Text(
            NumberFormat("0.0", langCode).format(item.rating),
            style: CustomTypography.labelSm.copyWith(
              fontSize: 6.67,
              height: 8.21 / 6.67,
              color: context.appColors.static.black,
            ),
          ),
        ],
      ),
    );
  }

  Widget _quantityBadge(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(4, 2, 4, 1),
      decoration: BoxDecoration(
        color: context.appColors.fill.tertiary,
        borderRadius: BorderRadius.circular(56),
      ),
      child: Text(
        context.localization.market_order_quantity(item.quantity),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ).bodyXXsm(color: context.appColors.textIconColor.secondary),
    );
  }
}
