import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class HomeRegionCard extends StatelessWidget {
  final String title;
  final String? temperature;
  final String? temperatureImageUrl;

  final GestureTapCallback onTap;

  const HomeRegionCard({
    super.key,
    required this.title,
    required this.onTap,
    this.temperature,
    this.temperatureImageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child:
          Container(
            height: 54,
            padding: EdgeInsets.only(left: 20, right: 16),
            decoration: BoxDecoration(
              border: Border.all(
                color: context.appColors.stroke.nonOpaque,
                width: 0.5,
              ),
              borderRadius: BorderRadius.circular(40),
              color: context.appColors.background.elevation1,
            ),
            child: Row(
              spacing: 16,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Row(
                    spacing: 12,
                    children: [
                      Assets.svgLocationFill.toSvgImage(
                        width: 16,
                        height: 16,
                        colorFilter: ColorFilter.mode(
                          context.appColors.textIconColor.secondary,
                          BlendMode.srcIn,
                        ),
                      ),
                      Text(title, style: CustomTypography.labelMd),
                    ],
                  ),
                ),
                if (temperature != null)
                  Row(
                    spacing: 4,
                    children: [
                      Text(temperature!, style: CustomTypography.labelMd),
                      ExtendedImage.network(
                        "https:${temperatureImageUrl}",
                        cache: true,
                        height: 24,
                        width: 24,
                        loadStateChanged: (state) {
                          if (state.extendedImageLoadState ==
                              LoadState.completed) {
                            return null;
                          }

                          return SizedBox();
                        },
                      ),
                    ],
                  ),
              ],
            ),
          ).shadow(context),
    );
  }
}
