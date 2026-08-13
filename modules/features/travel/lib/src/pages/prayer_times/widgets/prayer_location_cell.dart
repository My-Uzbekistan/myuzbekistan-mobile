import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class PrayerLocationCell extends StatelessWidget {
  const PrayerLocationCell({
    super.key,
    required this.title,
    required this.locationName,
    this.onTap,
  });

  final String title;
  final String locationName;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: Container(
        constraints: const BoxConstraints(maxHeight: 72),
        padding: const EdgeInsets.all(16),
        child: Row(
          spacing: 16,
          children: [
            Expanded(
              child: Text(
                title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ).labelMd(color: colors.textIconColor.primary),
            ),
            SizedBox(
              height: 24,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                spacing: 4,
                children: [
                  Flexible(
                    child: Text(
                      locationName,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ).bodySm(color: colors.textIconColor.secondary),
                  ),
                  Assets.svg.iconArrowRight.path.toSvgImage(
                    width: 20,
                    height: 20,
                    colorFilter: ColorFilter.mode(
                      colors.textIconColor.primary,
                      BlendMode.srcIn,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ).shadow(context, borderRadius: BorderRadius.circular(20)),
    );
  }
}
