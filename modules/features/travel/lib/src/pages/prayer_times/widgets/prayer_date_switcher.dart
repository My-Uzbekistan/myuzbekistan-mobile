import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

import 'prayer_date_arrow_button.dart';

class PrayerDateSwitcher extends StatelessWidget {
  const PrayerDateSwitcher({
    super.key,
    required this.dateText,
    this.onPrevious,
    this.onNext,
  });

  final String dateText;
  final VoidCallback? onPrevious;
  final VoidCallback? onNext;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 8,
      children: [
        PrayerDateArrowButton(
          assetPath: Assets.svg.prayers.chevronLeft.path,
          onTap: onPrevious,
        ),
        Expanded(
          child: Container(
            constraints: const BoxConstraints(minHeight: 56, maxHeight: 72),
            padding: const EdgeInsets.all(16),
            child: Center(
              heightFactor: 1,
              child: Text(
                dateText,
                textAlign: TextAlign.center,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ).bodyMd(color: context.appColors.textIconColor.primary),
            ),
          ).shadow(context, borderRadius: BorderRadius.circular(20)),
        ),
        PrayerDateArrowButton(
          assetPath: Assets.svg.prayers.chevronRight.path,
          onTap: onNext,
        ),
      ],
    );
  }
}
