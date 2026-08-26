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
      child: AppNetworkImage(
        url.orEmpty(),
        fit: BoxFit.cover,
        width: double.infinity,
        height: double.infinity,
        placeholder: ColoredBox(color: context.appColors.fill.quaternary),
      ),
    );
  }
}
