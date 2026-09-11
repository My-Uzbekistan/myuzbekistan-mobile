import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class TravelChip extends StatelessWidget {
  const TravelChip({
    super.key,
    required this.title,
    this.isSelected = false,
    this.onTap,
  });

  final String title;
  final bool isSelected;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: Container(
        height: 30,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: isSelected ? colors.brandSeaBlue : colors.fill.tertiary,
          borderRadius: BorderRadius.circular(56),
        ),
        child: Text(
          title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ).labelSm(
          color:
              isSelected ? colors.static.white : colors.textIconColor.primary,
        ),
      ),
    );
  }
}
