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

class HomeImagePagerContent extends StatelessWidget {
  final HomePagerContentData data;
  final GestureTapCallback? onTap;
  final String? recommendText;

  HomeImagePagerContent(
      {super.key, this.recommendText, required this.data, this.onTap});

  final controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: GestureDetector(
        onTap: onTap,
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
                            itemCount: data.items.length,
                            physics: ClampingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            allowImplicitScrolling: true,
                            pageSnapping: true,
                            itemBuilder: (context, index) {
                              return CachedNetworkImage(
                                key: ValueKey(index),
                                imageUrl: data.items[index],
                                fit: BoxFit.cover,
                              );
                            })),
                    Positioned.fill(
                        child: IgnorePointer(
                      child: Container(
                          color: context.appColors.static.black
                              .withValues(alpha: 0.16)),
                    )),
                    if (recommendText != null)
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
                            recommendText!,
                            style: CustomTypography.labelSm
                                .copyWith(color: Colors.black),
                          ),
                        ),
                      ),
                    if (data.items.length > 1)
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 12.0),
                          child: SmoothPageIndicator(
                              controller: controller, // PageController
                              count: data.items.length,
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
                        data.title,
                        style: CustomTypography.labelMd,
                      ),
                    ),
                    if ((data.rating ?? 0) > 0)
                      Row(
                        spacing: 4,
                        children: [
                          Assets.svgStar.toSvgImage(
                              width: 16,
                              height: 16,
                              colorFilter: ColorFilter.mode(
                                  Colors.black, BlendMode.srcIn)),
                          RichText(
                            text: TextSpan(
                                style: CustomTypography.labelMd.copyWith(
                                    color: context
                                        .appColors.textIconColor.primary),
                                children: [
                                  TextSpan(text: data.rating.toString()),
                                  if ((data.review ?? 0) > 0)
                                    TextSpan(
                                      text: " ${data.review}",
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
                if (data.caption != null)
                  Text(
                    data.caption!,
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
