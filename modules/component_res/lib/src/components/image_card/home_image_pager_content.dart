import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePagerContentData {
  final List<String> items;
  final String title;
  final String? caption;
  final double? rating;
  final int? review;

  HomePagerContentData({
    required this.items,
    required this.title,
    this.caption,
    this.rating,
    this.review,
  });
}

class HomeImagePagerContent extends StatefulWidget {
  final HomePagerContentData data;
  final GestureTapCallback? onTap;
  final String? recommendText;

  HomeImagePagerContent(
      {super.key, this.recommendText, required this.data, this.onTap});

  @override
  State<HomeImagePagerContent> createState() => _HomeImagePagerContentState();
}

class _HomeImagePagerContentState extends State<HomeImagePagerContent>
{
  final controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: GestureDetector(
        onTap: widget.onTap,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          spacing: 16,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(24),
              child: AspectRatio(
                aspectRatio: 335 / 300,
                child: Stack(
                  children: [
                    Positioned.fill(
                        child: PageView.builder(
                            controller: controller,
                            itemCount: widget.data.items.length,
                            scrollDirection: Axis.horizontal,
                            allowImplicitScrolling: true,
                            pageSnapping: true,
                            itemBuilder: (context, index) {
                              return _ImagePage(
                                url: widget.data.items[index],
                              );
                            })),
                    Positioned.fill(
                        child: IgnorePointer(
                      child: Container(
                          color: context.appColors.static.black
                              .withValues(alpha: 0.16)),
                    )),
                    if (widget.recommendText != null)
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          margin: EdgeInsets.all(12),
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(24)),
                          child: Text(
                            widget.recommendText!,
                            style: CustomTypography.labelSm
                                .copyWith(color: Colors.black),
                          ),
                        ),
                      ),
                    if (widget.data.items.length > 1)
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 12.0),
                          child: SmoothPageIndicator(
                              controller: controller, // PageController
                              count: widget.data.items.length,
                              effect: WormEffect(
                                spacing: 4.0,
                                dotWidth: 6.0,
                                dotHeight: 6.0,
                                type: WormType.thin,
                                activeDotColor: Colors.white,
                                dotColor: Colors.white60,
                                paintStyle: PaintingStyle.fill,
                              ), // your preferred effect
                              onDotClicked: (index) {}),
                        ),
                      )
                  ],
                ),
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              spacing: 2,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        widget.data.title,
                        style: CustomTypography.labelMd,
                      ),
                    ),
                    if ((widget.data.rating ?? 0) > 0)
                      Row(
                        spacing: 4,
                        children: [
                          Assets.svgStar.toSvgImage(
                              width: 16,
                              height: 16,
                              colorFilter: ColorFilter.mode(
                                  context.appColors.textIconColor.primary, BlendMode.srcIn)),
                          RichText(
                            text: TextSpan(
                                style: CustomTypography.labelMd.copyWith(
                                    color: context
                                        .appColors.textIconColor.primary),
                                children: [
                                  TextSpan(text: widget.data.rating.toString()),
                                  if ((widget.data.review ?? 0) > 0)
                                    TextSpan(
                                      text: " ${widget.data.review}",
                                      style: CustomTypography.labelMd.copyWith(
                                          color: context.appColors.textIconColor
                                              .secondary),
                                    ),
                                ]),
                          )
                        ],
                      )
                  ],
                ),
                if (widget.data.caption != null)
                  Text(
                    widget.data.caption!,
                    style: CustomTypography.bodySm.copyWith(
                        color: context.appColors.textIconColor.secondary),
                  )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class _ImagePage extends StatefulWidget {
  final String url;

  const _ImagePage({super.key, required this.url});

  @override
  State<_ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<_ImagePage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context); // MUHIM!

    return  ExtendedImage.network(
      widget.url,
      key: ValueKey(widget.url),
      fit: BoxFit.cover,
      cache: true,
      cacheMaxAge: Duration(days: 2),
      loadStateChanged: (ExtendedImageState state) {
        switch (state.extendedImageLoadState) {
          case LoadState.completed:
            return AnimatedOpacity(
              opacity: 1.0,
              duration: Duration(milliseconds: 300),
              curve: Curves.easeInToLinear,
              child: state.completedWidget,
            );
          default:
            return Assets.pngDefaultContentImage.toImage(fit: BoxFit.cover);
        }
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}
