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
      width = 156;
      height = width;
    } else if (appImageCardSize == AppImageCardSize.medium) {
      width = 100;
      height = 100;
    }

    return SizedBox(
      height: height,
      width: width,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
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
          ],
        ),
      ),
    );
  }
}
