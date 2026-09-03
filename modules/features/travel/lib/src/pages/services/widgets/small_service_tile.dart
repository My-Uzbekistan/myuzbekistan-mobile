import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart' hide Toast;

import '../service_item.dart';
import 'service_badge_pill.dart';
import 'service_icon.dart';

class SmallServiceTile extends HookWidget {
  final ServiceItem item;
  final int titleMaxLines;

  const SmallServiceTile({
    super.key,
    required this.item,
    this.titleMaxLines = 1,
  });

  @override
  Widget build(BuildContext context) {
    final isChecking = useState(false);
    final badge = item.badge;

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () async {
        if (isChecking.value) return;
        isChecking.value = true;
        await item.onTap?.call();
        if (context.mounted) isChecking.value = false;
      },
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.topCenter,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            spacing: 8,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: SizedBox.square(
                  dimension: 56,
                  child: ColoredBox(
                    color: item.color,
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Positioned(
                          left: -2,
                          top: 8,
                          child: ServiceIcon(item: item, size: 60),
                        ),
                        if (isChecking.value)
                          Positioned.fill(
                            child: ColoredBox(
                              color: context.appColors.service.scrim,
                              child: const Center(
                                child: LoadingIndicator(size: 20),
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              ),
              Text(
                item.title,
                maxLines: titleMaxLines,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
              ).bodyXXsm(color: context.appColors.textIconColor.primary),
            ],
          ),
          if (badge != null)
            Positioned(
              top: -4,
              right: 0,
              child: ServiceBadgePill(badge: badge),
            ),
        ],
      ),
    );
  }
}
