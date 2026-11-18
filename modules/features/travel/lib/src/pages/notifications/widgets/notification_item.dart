import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';
import 'package:travel/src/pages/notifications/widgets/notification_image.dart';
import 'package:travel/src/pages/notifications/widgets/notification_unseen_dot.dart';

class NotificationItemWidget extends StatelessWidget {
  final GestureTapCallback? onTap;
  final String? title;
  final String? date;
  final String? image;
  final bool isSeen;

  const NotificationItemWidget({
    super.key,
    this.onTap,
    this.title,
    this.date,
    this.image,
    this.isSeen = false,
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
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 12,
          children: [
            AspectRatio(
              aspectRatio: 343 / 200,
              child: NotificationImage(
                url: image,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 8,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 8,
                    children: [
                      Text(title.orEmpty()).h3(),
                      Text(date.orEmpty()).bodySm(
                        color: context.appColors.textIconColor.secondary,
                      ),
                    ],
                  ),
                ),
                if (!isSeen) const NotificationUnseenDot(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
