import 'dart:ui';

import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductCard extends HookWidget {
  final List<String> images;
  final String title;
  final String priceText;
  final String currency;
  final int cartCount;
  final ValueChanged<int> onCartCountChanged;
  final bool isFavorite;
  final VoidCallback? onFavoriteTap;
  final VoidCallback? onTap;
  final double? width;

  const ProductCard({
    super.key,
    required this.images,
    required this.title,
    required this.priceText,
    required this.currency,
    required this.cartCount,
    required this.onCartCountChanged,
    this.isFavorite = false,
    this.onFavoriteTap,
    this.onTap,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    final pageController = usePageController();

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: SizedBox(
        width: width,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 4,
          children: [
            _gallery(context, pageController),
            if (images.length > 1)
              Center(
                child: SmoothPageIndicator(
                  controller: pageController,
                  count: images.length,
                  effect: ScaleEffect(
                    dotWidth: 4,
                    dotHeight: 4,
                    radius: 4,
                    spacing: 6,
                    scale: 1.5,
                    dotColor: context.appColors.textIconColor.disable,
                    activeDotColor: context.appColors.textIconColor.tertiary,
                  ),
                ),
              ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 8,
              children: [
                Text(
                  title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTypography.bodyMd.copyWith(
                      color: context.appColors.textIconColor.primary),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  spacing: 2,
                  children: [
                    Text(
                      priceText,
                      style: CustomTypography.labelLg
                          .copyWith(color: context.appColors.textIconColor.primary),
                    ),
                    Text(
                      currency,
                      style: CustomTypography.bodySm
                          .copyWith(color: context.appColors.textIconColor.tertiary),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _gallery(BuildContext context, PageController controller) {
    return AspectRatio(
      aspectRatio: 1,
      child: Stack(
        children: [
          Positioned.fill(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(24),
              child: Stack(
                children: [
                  Positioned.fill(
                    child: images.length > 1
                        ? PageView.builder(
                            controller: controller,
                            physics: const PageScrollPhysics(
                                parent: ClampingScrollPhysics()),
                            itemCount: images.length,
                            allowImplicitScrolling: true,
                            itemBuilder: (context, index) =>
                                ProductCardImage(imageUrl: images[index]),
                          )
                        : ProductCardImage(
                            imageUrl: images.isEmpty ? "" : images.first),
                  ),
                  Positioned.fill(
                    child: IgnorePointer(
                      child: ColoredBox(
                        color: context.appColors.static.black
                            .withValues(alpha: 0.16),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned.fill(
            child: IgnorePointer(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(
                    color:
                        context.appColors.static.white.withValues(alpha: 0.12),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 11,
            right: 11,
            child: _favoriteButton(context),
          ),
          Positioned(
            bottom: 11,
            right: 11,
            child: CartButton(
              count: cartCount,
              onCountChanged: onCartCountChanged,
            ),
          ),
        ],
      ),
    );
  }

  Widget _favoriteButton(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onFavoriteTap,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 16, sigmaY: 16),
          child: Container(
            padding: const EdgeInsets.all(8),
            color: context.appColors.static.black.withValues(alpha: 0.64),
            child: (isFavorite
                    ? Assets.svg.iconFilledHeard.path
                    : Assets.svg.outlineHeard.path)
                .toSvgImage(
              width: 16,
              height: 16,
              fit: BoxFit.contain,
              tintColor: context.appColors.static.white,
            ),
          ),
        ),
      ),
    );
  }
}
