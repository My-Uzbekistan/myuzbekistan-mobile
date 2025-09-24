import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class SettingsCell extends StatelessWidget {
  final Widget? icon;
  final Widget? trailing;
  final String text;
  final VoidCallback? onTap;

  const SettingsCell(
      {super.key, required this.text, this.icon, this.trailing, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.all(16),
          child: Row(
            spacing: 16,
            children: [
              if (icon != null) icon!,
              Expanded(child: Text(text, style: CustomTypography.labelLg)),
              trailing ??
                  Assets.svgIconArrowRight.toSvgImage(
                      colorFilter: ColorFilter.mode(
                          context.appColors.textIconColor.secondary,
                          BlendMode.srcIn))
            ],
          ),
        ),
      ),
    );
  }
}
