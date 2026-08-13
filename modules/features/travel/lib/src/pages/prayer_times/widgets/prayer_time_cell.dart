import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';

class PrayerTimeCell extends StatelessWidget {
  const PrayerTimeCell({
    super.key,
    required this.item,
    required this.showReminder,
    required this.isReminderOn,
    this.onReminderTap,
  });

  final PrayerTimeItem item;
  final bool showReminder;
  final bool isReminderOn;
  final VoidCallback? onReminderTap;

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        spacing: 16,
        children: [
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ).bodyLg(color: colors.textIconColor.secondary),
                const SizedBox(height: 2),
                Text(
                  item.time,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ).h3(color: colors.textIconColor.primary),
              ],
            ),
          ),
          if (showReminder)
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: onReminderTap,
              child: SizedBox(
                width: 24,
                height: 24,
                child: Center(
                  child:
                      (isReminderOn
                              ? Assets.svg.prayers.notificationOn
                              : Assets.svg.prayers.notificationOff)
                          .path
                          .toSvgImage(
                            width: 20,
                            height: 20,
                            colorFilter: ColorFilter.mode(
                              isReminderOn
                                  ? colors.brand
                                  : colors.textIconColor.secondary,
                              BlendMode.srcIn,
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
