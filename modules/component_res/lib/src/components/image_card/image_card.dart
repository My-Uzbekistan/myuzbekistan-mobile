
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

  static _AppItemCardImage large(
      {final String? imageUrl,
      int? star,
      double ratingAverage = 0,
      int averageCheck = 0,
      bool blur = false,
      String? priceText}) {
    return _AppItemCardImage(
      imageUrl: imageUrl,
      ratingAverage: ratingAverage,
      averageCheck: averageCheck,
      blur: blur,
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

class _AppItemCardImage extends StatefulWidget {
  final String? imageUrl;
  final AppImageCardSize appImageCardSize;
  final double ratingAverage;
  final int averageCheck;
  final String? priceText;
  final Widget? topRightWidget;
  final bool blur;

  const _AppItemCardImage(
      {super.key,
      this.imageUrl,
      this.appImageCardSize = AppImageCardSize.large,
      this.ratingAverage = 0,
      this.averageCheck = 0,
      this.topRightWidget,
      this.blur = false,

      this.priceText});

  @override
  State<_AppItemCardImage> createState() => _AppItemCardImageState();
}

class _AppItemCardImageState extends State<_AppItemCardImage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    double height = double.infinity;
    double width = double.infinity;
    if (widget.appImageCardSize == AppImageCardSize.large) {
      width = 156;
      height = width;
    } else if (widget.appImageCardSize == AppImageCardSize.medium) {
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
            widget.blur
                ? Positioned.fill(
                    child: SoftEdgeBlur(
                      edges: [
                        EdgeBlur(
                          type: EdgeType.bottomEdge,
                          size: 70,
                          sigma: 6,
                          tileMode: TileMode.mirror,
                          controlPoints: [
                            ControlPoint(
                              position: 0.7,
                              type: ControlPointType.visible,
                            ),
                            ControlPoint(
                              position: 1,
                              type: ControlPointType.transparent,
                            ),
                          ],
                        ),
                      ],
                      child: _ImageContent(imageUrl: widget.imageUrl ?? ""),
                    ),
                  )
                : _ImageContent(imageUrl: widget.imageUrl ?? ""),
            Positioned.fill(
                child: Container(
              color: context.appColors.static.black.withValues(
                  alpha: widget.appImageCardSize == AppImageCardSize.extraLarge
                      ? 0.32
                      : 0.16),
            )),
            if (widget.topRightWidget != null)
              Positioned(
                right: 8,
                top: 8,
                child: widget.topRightWidget!,
              ),
            if (widget.averageCheck > 0)
              Positioned(
                  bottom: 12,
                  right: 12,
                  child:
                  PriceCategoryWithContainer(priceCategory: widget.averageCheck)),
            if (widget.priceText != null && widget.priceText!.isNotEmpty)
              Positioned(
                  bottom: 12,
                  right: 12,
                  child: PriceContainer(priceText:widget.priceText!))
          ],
        ),
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}

class _ImageContent extends StatefulWidget {
  final String imageUrl;

  const _ImageContent({super.key, required this.imageUrl});

  @override
  State<_ImageContent> createState() => _ImageContentState();
}

class _ImageContentState extends State<_ImageContent> {
  @override
  Widget build(BuildContext context) {
    return  ExtendedImage.network(
          widget.imageUrl,
          key: ValueKey(widget.imageUrl),
          fit: BoxFit.cover,
          height: double.maxFinite,
          width: double.maxFinite,
          cache: true,
          cacheMaxAge: const Duration(days: 1),
          loadStateChanged: (ExtendedImageState state) {
            switch (state.extendedImageLoadState) {
              case LoadState.completed:
                return AnimatedOpacity(
                  opacity: 1.0,
                  duration: Duration(milliseconds: 200),
                  child: state.completedWidget,
                ); // ✅ Default image o'zi ko'rsatiladi
              default:
                return Assets.png.defaultContentImage.image(fit: BoxFit.fill);
            }
          },


      );

  }

  @override
  bool get wantKeepAlive => true;
}
