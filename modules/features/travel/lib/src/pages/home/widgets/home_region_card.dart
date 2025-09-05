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
                          Assets.svgLocationFill.toSvgImage(
                            width: 16,
                            height: 16,
                            fit: BoxFit.cover,
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
                          ExtendedImage.network(
                            "https:$temperatureImageUrl",
                            cache: true,
                            height: 24,
                            width: 24,
                            fit: BoxFit.cover,
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
              ),
            ),
          ),
          AspectRatio(
            aspectRatio: 1,
            child: GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: () {
                context.travel.pushNotifications(notificationId: "123");
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
                        Assets.svgNotificationIcon.toSvgImage(
                          tintColor: context.appColors.textIconColor.primary,
                        ),
                        Positioned(
                          right: 3,
                          top: 0,
                          child: CircleAvatar(
                            radius: 3,
                            backgroundColor: context.appColors.colors.red,
                          ),
                        ),
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
