import 'dart:math';

import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

mixin AppImageCard {
  static _AppItemCardImage extraLarge({
    String? imageUrl,
  }) {
    return _AppItemCardImage(
      imageUrl: imageUrl,
      appImageCardSize: AppImageCardSize.extraLarge,
    );
  }

  static _AppItemCardImage large({
    String? imageUrl,
    int? star,
    double? rate,
    int? priceRate,
  }) {
    return _AppItemCardImage(
      imageUrl: imageUrl,
      rate: rate,
      star: star,
      priceRate: priceRate,
    );
  }

  static _AppItemCardImage medium({
    String? imageUrl,
  }) {
    return _AppItemCardImage(
      imageUrl: imageUrl,
      appImageCardSize: AppImageCardSize.medium,
    );
  }
}

enum AppImageCardSize { medium, large, extraLarge }

class _AppItemCardImage extends StatelessWidget {
  final String? imageUrl;
  final AppImageCardSize appImageCardSize;
  final double? rate;
  final int? star;
  final int? priceRate;
  const _AppItemCardImage({
    super.key,
    this.imageUrl,
    this.appImageCardSize = AppImageCardSize.large,
    this.rate,
    this.star,
    this.priceRate,
  });

  @override
  Widget build(BuildContext context) {
    double height = double.infinity;
    double width = double.infinity;
    if (appImageCardSize == AppImageCardSize.large) {
      final screenWidth = MediaQuery.of(context).size.width;
      final itemWidth = screenWidth * 0.25;
      width = max(156.0, min(200.0, itemWidth));
      height = width;
    } else if (appImageCardSize == AppImageCardSize.medium) {
      width = 100;
      height = 100;
    }

    return SizedBox(
      height: height,
      width: width,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Stack(
          children: [
            CachedNetworkImage(
              imageUrl: imageUrl ?? "",
              errorWidget: (context, o, s) {
                return Assets.pngDefaultContentImage.toImage(fit: BoxFit.cover);
              },
              placeholder: (context, s) {
                return Assets.pngDefaultContentImage.toImage();
              },
              fit: BoxFit.cover,
              height: double.maxFinite,
              width: double.maxFinite,
            ),
            Positioned.fill(
                child: Container(
              color: context.appColors.static.black.withValues(
                  alpha: appImageCardSize == AppImageCardSize.extraLarge
                      ? 0.32
                      : 0.16),
            )),
            if (rate != null)
              Positioned(
                  top: 12,
                  left: 12,
                  child: Container(
                    constraints: BoxConstraints(minHeight: 20, minWidth: 36),
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32),
                        color: Colors.white),
                    child: Text(
                      "$rate",
                      style: CustomTypography.labelSm
                          .copyWith(color: context.appColors.brand),
                    ),
                  )),
            Positioned(
                bottom: 12,
                left: 12,
                right: 12,
                child: Row(
                  children: [
                    if (star != null) StarsBadge(stars: star!),
                    Expanded(
                      child: SizedBox(),
                    ),
                    if (priceRate != null)
                      PriceCategoryWithContainer(priceCategory: priceRate!)
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
