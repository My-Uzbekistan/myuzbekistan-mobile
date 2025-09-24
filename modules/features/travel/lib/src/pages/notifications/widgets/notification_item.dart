import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

class NotificationItemWidget extends StatelessWidget {
  final GestureTapCallback? onTap;
  final String? title;
  final String? date;
  final String? image;

  const NotificationItemWidget({
    super.key,
    this.onTap,
    this.title,
    this.date,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: context.appColors.background.elevation1,
          borderRadius: BorderRadius.circular(24),
        ),
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 8,
          children: [
            AspectRatio(
              aspectRatio: 311 / 200,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: ExtendedImage.network(
                  image.orEmpty(),
                  fit: BoxFit.cover,
                  loadStateChanged: (state) {
                    switch (state.extendedImageLoadState) {
                      case LoadState.completed:
                        return null;
                      default:
                        return Container(
                          color: context.appColors.fill.tertiary,
                        );
                    }
                  },
                ),
              ),
            ),
            Text(title.orEmpty()).h3(),
            Text(
              date.orEmpty(),
            ).bodySm(color: context.appColors.textIconColor.secondary),
          ],
        ),
      ).shadow(context, backgroundColor: Colors.transparent),
    );
  }
}
