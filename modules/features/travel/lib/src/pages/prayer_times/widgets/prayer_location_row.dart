import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class PrayerLocationRow extends StatelessWidget {
  const PrayerLocationRow({
    super.key,
    required this.name,
    required this.isSelected,
    this.onTap,
  });

  final String name;
  final bool isSelected;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;
    return InkWell(
      onTap: onTap,
      child: Container(
        constraints: const BoxConstraints(minHeight: 56),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Row(
          spacing: 16,
          children: [
            Expanded(
              child: Text(
                name,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ).bodyLg(color: colors.textIconColor.primary),
            ),
            if (isSelected)
              Assets.svg.iconCheck.path.toSvgImage(
                width: 20,
                height: 20,
                colorFilter: ColorFilter.mode(colors.brand, BlendMode.srcIn),
              ),
          ],
        ),
      ),
    );
  }
}
