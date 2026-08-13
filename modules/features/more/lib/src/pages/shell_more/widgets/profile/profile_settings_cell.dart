import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class ProfileSettingsCell extends StatelessWidget {
  final Widget icon;
  final String title;
  final Color? iconBackgroundColor;
  final Color? contentColor;
  final Widget? trailing;
  final Widget? trailingIcon;
  final String? trailingText;
  final bool showChevron;
  final GestureTapCallback? onTap;

  const ProfileSettingsCell({
    super.key,
    required this.icon,
    required this.title,
    this.iconBackgroundColor,
    this.contentColor,
    this.trailing,
    this.trailingIcon,
    this.trailingText,
    this.showChevron = true,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final boxColor = iconBackgroundColor ?? context.appColors.brand;

    final chevron = SizedBox(
      height: 20,
      width: 20,
      child: Assets.svg.iconArrowRight.path.toSvgImage(
        fit: BoxFit.contain,
        colorFilter: ColorFilter.mode(
          context.appColors.textIconColor.secondary,
          BlendMode.srcIn,
        ),
      ),
    );

    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: onTap,
      child: Container(
        constraints: const BoxConstraints(minHeight: 56),
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          spacing: 16,
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: boxColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: SizedBox(
                height: 24,
                width: 24,
                child: ColorFiltered(
                  colorFilter: ColorFilter.mode(
                    context.appColors.static.white,
                    BlendMode.srcIn,
                  ),
                  child: icon,
                ),
              ),
            ),
            Expanded(
              child: Text(
                title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ).labelMd(color: contentColor),
            ),
            trailing ??
                Row(
                  mainAxisSize: MainAxisSize.min,
                  spacing: 12,
                  children: [
                    if (trailingIcon != null)
                      SizedBox(height: 20, width: 20, child: trailingIcon),
                    if (trailingText != null)
                      Text(trailingText!).bodyMd(
                        color: context.appColors.textIconColor.secondary,
                      ),
                    if (showChevron) chevron,
                  ],
                ),
          ],
        ),
      ),
    );
  }
}
