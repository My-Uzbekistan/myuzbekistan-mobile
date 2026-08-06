import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

import '../service_item.dart';
import 'service_icon.dart';

/// Kichik xizmat plitkasi: katta 3D ikonka + ostida sarlavha.
class SmallServiceTile extends StatelessWidget {
  final ServiceItem item;
  final double iconSize;

  const SmallServiceTile({super.key, required this.item, this.iconSize = 56});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: item.onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ServiceIcon(item: item, size: iconSize),
          const SizedBox(height: 6),
          Text(
            item.title,
            maxLines: 2,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
          ).bodyXXsm(color: context.appColors.textIconColor.primary),
        ],
      ),
    );
  }
}
