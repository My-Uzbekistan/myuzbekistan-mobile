import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

import '../service_item.dart';
import 'service_icon.dart';

/// Katta (featured) xizmat plitkasi: chapda-tepada sarlavha,
/// o'ng chekkadan katta 3D ikonka chiqib turadi (Figma dizayni bo'yicha).
class FeatureServiceTile extends StatelessWidget {
  final ServiceItem item;

  const FeatureServiceTile({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: item.onTap,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: ColoredBox(
          color: item.color,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              // Katta ikonka — o'ng-past chekkadan chiqib turadi.
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
            ],
          ),
        ),
      ),
    );
  }
}
