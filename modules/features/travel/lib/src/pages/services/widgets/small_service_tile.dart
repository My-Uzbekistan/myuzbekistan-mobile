import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

import '../service_item.dart';
import 'service_icon.dart';

/// Kichik xizmat plitkasi: fon ustidagi 3D ikonka + ostida sarlavha.
class SmallServiceTile extends StatelessWidget {
  final ServiceItem item;

  const SmallServiceTile({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: item.onTap,
      child: Column(
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
                  ],
                ),
              ),
            ),
          ),
          Text(
            item.title,
            maxLines: 1,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
          ).bodyXXsm(color: context.appColors.textIconColor.primary),
        ],
      ),
    );
  }
}
