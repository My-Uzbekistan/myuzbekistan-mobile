import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class PremiumItemCell extends StatelessWidget {
  final String? iconUrl;
  final String title;
  final String description;

  const PremiumItemCell({
    super.key,
    this.iconUrl,
    required this.title,
    required this.description,
  });

  Widget? _icon() {
    final url = iconUrl;
    if (url == null || url.isEmpty) return null;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: ExtendedImage.network(
        url,
        height: 32,
        width: 32,
        fit: BoxFit.contain,
        loadStateChanged: (state) {
          switch (state.extendedImageLoadState) {
            case LoadState.completed:
              return null;
            default:
              return const SizedBox(height: 32, width: 32);
          }
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final icon = _icon();
    return Row(
      spacing: 16,
      children: [
        if (icon != null) icon,
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 4,
            children: [
              Text(title).labelLg(),
              Text(
                description,
              ).bodyMd(color: context.appColors.textIconColor.secondary),
            ],
          ),
        ),
      ],
    );
  }
}