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
    double ratingAverage = 0,
    int averageCheck = 0,
    String? priceText
  }) {
    return _AppItemCardImage(
      imageUrl: imageUrl,
      ratingAverage: ratingAverage,
      averageCheck: averageCheck,
      priceText: priceText,
    );
  }

  static _AppItemCardImage medium({
    String? imageUrl,
    Widget? topRightWidget,
  }) {
    return _AppItemCardImage(
      imageUrl: imageUrl,
      appImageCardSize: AppImageCardSize.medium,
      topRightWidget: topRightWidget,
    );
  }
}

enum AppImageCardSize { medium, large, extraLarge }

class _AppItemCardImage extends StatelessWidget {
  final String? imageUrl;
  final AppImageCardSize appImageCardSize;
  final double ratingAverage;
  final int averageCheck;
  final String? priceText;
  final  Widget? topRightWidget;

  const _AppItemCardImage(
      {super.key,
      this.imageUrl,
      this.appImageCardSize = AppImageCardSize.large,
      this.ratingAverage = 0,
      this.averageCheck = 0,
        this.topRightWidget,
      this.priceText});

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
              errorListener: (e) {
                debugPrint(e.toString());
              },
              errorWidget: (context, o, s) {
                return Assets.pngDefaultContentImage.toImage(fit: BoxFit.cover);
              },
              placeholder: (context, s) {
                return Assets.pngDefaultContentImage.toImage(fit: BoxFit.cover);
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

            if(topRightWidget!=null)
              Positioned(
                right: 8,
                top: 8,
                child: topRightWidget!,
              ),
            if (ratingAverage > 0)
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
                      "$ratingAverage",
                      style: CustomTypography.labelSm
                          .copyWith(color: context.appColors.brand),
                    ),
                  )),
            if (averageCheck > 0)
              Positioned(
                  bottom: 12,
                  right: 12,
                  child:
                      PriceCategoryWithContainer(priceCategory: averageCheck)),
            if (priceText != null && priceText!.isNotEmpty)
              Positioned(
                  bottom: 12,
                  right: 12,
                  child: PriceContainer(priceText: priceText!))
          ],
        ),
      ),
    );
  }
}
