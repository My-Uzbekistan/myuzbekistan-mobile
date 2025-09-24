import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart';

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
    return IntrinsicHeight(
      child: Row(
        spacing: 8,
        children: [
          Expanded(
            child: GestureDetector(
              onTap: onTap,
              child: Container(
                height: 48,
                padding: EdgeInsets.only(left: 16, right: 12),
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: context.appColors.stroke.nonOpaque,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Row(
                  spacing: 16,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Row(
                        spacing: 12,
                        children: [
                          Assets.svgLocatorFill.toSvgImage(
                            width: 18,
                            height: 18,
                            fit: BoxFit.fill,
                            colorFilter: ColorFilter.mode(
                              context.appColors.textIconColor.primary,
                              BlendMode.srcIn,
                            ),
                          ),
                          Text(title).labelMd(),
                        ],
                      ),
                    ),
                    if (temperature != null)
                      Row(
                        spacing: 4,
                        children: [
                          Text(temperature!).bodyMd(
                            color: context.appColors.textIconColor.secondary,
                          ),
                          SizedBox(
                            height: 18,
                            width: 18,
                            child: ExtendedImage.network(
                              "https:$temperatureImageUrl",
                              cache: false,
                              fit: BoxFit.fill,
                              loadStateChanged: (state) {
                                if (state.extendedImageLoadState ==
                                    LoadState.completed) {
                                  return null;
                                }

                                return SizedBox();
                              },
                            ),
                          ),
                        ],
                      ),
                  ],
                ),
              ),
            ),
          ),
          AspectRatio(
            aspectRatio: 1,
            child: GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                context.travel.pushNotifications();
              },
              child: Container(
                height: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: context.appColors.stroke.nonOpaque,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: SizedBox(
                  height: 20,
                  width: 20,
                  child: Center(
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: Center(child: Assets.svgNotificationIcon.toSvgImage(
                            tintColor: context.appColors.textIconColor.primary,
                            fit: BoxFit.contain,
                          ),),
                        ),
                        // Positioned(
                        //   right: 3,
                        //   top: 0,
                        //   child: CircleAvatar(
                        //     radius: 3,
                        //     backgroundColor: context.appColors.colors.red,
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
