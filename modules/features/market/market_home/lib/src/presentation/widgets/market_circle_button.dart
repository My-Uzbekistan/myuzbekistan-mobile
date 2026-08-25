import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class MarketCircleButton extends StatelessWidget {
  const MarketCircleButton({
    super.key,
    required this.icon,
    this.size = 48,
    this.onTap,
  });

  final Widget icon;
  final double size;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: SizedBox(
        width: size,
        height: size,
        child: Center(child: icon),
      ).shadow(
        context,
        backgroundColor: context.appColors.background.elevation2,
        borderRadius: BorderRadius.circular(size / 2),
      ),
    );
  }
}
