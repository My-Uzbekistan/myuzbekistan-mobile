import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

import '../service_item.dart';

class ServiceIcon extends StatelessWidget {
  final ServiceItem item;
  final double size;
  final BoxFit fit;

  const ServiceIcon({
    super.key,
    required this.item,
    required this.size,
    this.fit = BoxFit.contain,
  });

  @override
  Widget build(BuildContext context) {
    if (item.iconUrl != null) {
      return AppNetworkImage(
        item.iconUrl!,
        width: size,
        height: size,
        fit: fit,
      );
    }
    return item.iconPath?.toSvgImage(
          width: size,
          height: size,
          fit: fit,
          tintColor: context.appColors.brandSeaBlue,
        ) ??
        const SizedBox.shrink();
  }
}
