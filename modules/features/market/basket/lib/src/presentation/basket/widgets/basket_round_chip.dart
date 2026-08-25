import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class BasketRoundChip extends StatelessWidget {
  static const double iconSize = 16;

  const BasketRoundChip({
    super.key,
    required this.icon,
    this.onTap,
    this.size = 30,
  });

  final Widget icon;
  final VoidCallback? onTap;
  final double size;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: Container(
        width: size,
        height: size,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: context.appColors.fill.tertiary,
          shape: BoxShape.circle,
        ),
        child: SizedBox.square(dimension: iconSize, child: icon),
      ),
    );
  }
}
