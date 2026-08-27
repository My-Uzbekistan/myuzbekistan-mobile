import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart' hide Toast;

import '../service_item.dart';
import 'service_badge_pill.dart';
import 'service_icon.dart';

class FeatureServiceTile extends HookWidget {
  final ServiceItem item;

  const FeatureServiceTile({super.key, required this.item});

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
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: ColoredBox(
          color: item.color,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                right: -28,
                bottom: -23,
                child: ServiceIcon(item: item, size: 120),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Text(
                  item.title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ).labelMd(color: context.appColors.textIconColor.primary),
              ),
              if (badge != null)
                Positioned(
                  top: 12,
                  right: 12,
                  child: ServiceBadgePill(badge: badge),
                ),
              if (isChecking.value)
                Positioned.fill(
                  child: ColoredBox(
                    color: context.appColors.service.scrim,
                    child: const Center(child: LoadingIndicator(size: 24)),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
