import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class AvatarActionButton extends StatelessWidget {
  final Widget icon;
  final Color? iconColor;
  final VoidCallback? onTap;

  const AvatarActionButton({
    super.key,
    required this.icon,
    this.iconColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: Container(
        width: 44,
        height: 44,
        decoration: BoxDecoration(
          color: context.appColors.background.elevation2,
          borderRadius: BorderRadius.circular(32),
          boxShadow: [
            BoxShadow(
              color: const Color(0x1A001024),
              blurRadius: 17,
              offset: const Offset(0, 6),
            ),
          ],
        ),
        alignment: Alignment.center,
        child: SizedBox(
          width: 20,
          height: 20,
          child: ColorFiltered(
            colorFilter: ColorFilter.mode(
              iconColor ?? context.appColors.textIconColor.primary,
              BlendMode.srcIn,
            ),
            child: icon,
          ),
        ),
      ),
    );
  }
}
