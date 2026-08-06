import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

import '../service_item.dart';

/// [ServiceItem] ikonasini chizadi — backend rasmi ([ServiceItem.iconUrl])
/// yoki SVG asset ([ServiceItem.iconPath]).
///
/// 3D ikonalar kesilib qolmasligi uchun standart `BoxFit.contain` ishlatiladi.
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
      return ExtendedImage.network(
        item.iconUrl!,
        width: size,
        height: size,
        fit: fit,
        loadStateChanged: (state) =>
            state.extendedImageLoadState == LoadState.completed
                ? null
                : const SizedBox.shrink(),
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
