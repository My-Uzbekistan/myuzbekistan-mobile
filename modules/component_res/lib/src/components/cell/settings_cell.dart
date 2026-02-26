import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class SettingsCell extends StatelessWidget {
  final Widget? icon;
  final Widget? trailing;
  final String text;
  final VoidCallback? onTap;
  final EdgeInsets? contentPadding;
  final BorderRadius? borderRadius;
  final Color containerColor;

  const SettingsCell(
      {super.key,
      required this.text,
      this.icon,
      this.trailing,
      this.onTap,
      this.contentPadding,
      this.borderRadius,
      this.containerColor = Colors.transparent});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: borderRadius,
      child: Container(
        decoration:
            BoxDecoration(borderRadius: borderRadius, color: containerColor),
        padding: contentPadding ?? EdgeInsets.all(16),
        child: Row(
          spacing: 16,

          children: [
            if (icon != null) icon!,
            Expanded(child: Text(
              text,
              softWrap: false,
            ).labelLg()),
            trailing ??
                Assets.svgIconArrowRight.toSvgImage(
                    colorFilter: ColorFilter.mode(
                        context.appColors.textIconColor.secondary,
                        BlendMode.srcIn))
          ],
        ),
      ),
    );
  }
}
