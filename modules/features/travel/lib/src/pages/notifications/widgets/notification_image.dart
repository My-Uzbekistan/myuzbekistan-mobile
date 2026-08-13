import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

class NotificationImage extends StatelessWidget {
  final String? url;
  final BorderRadius borderRadius;

  const NotificationImage({
    super.key,
    this.url,
    this.borderRadius = BorderRadius.zero,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius,
      child: ExtendedImage.network(
        url.orEmpty(),
        fit: BoxFit.cover,
        width: double.infinity,
        height: double.infinity,
        loadStateChanged: (state) {
          switch (state.extendedImageLoadState) {
            case LoadState.completed:
              return null;
            default:
              return Container(color: context.appColors.fill.quaternary);
          }
        },
      ),
    );
  }
}
