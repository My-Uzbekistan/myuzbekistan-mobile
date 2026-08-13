import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class AboutLinkRow extends StatelessWidget {
  final Widget icon;
  final String title;
  final VoidCallback onTap;

  const AboutLinkRow({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: onTap,
      child: Container(
        constraints: const BoxConstraints(minHeight: 56),
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          spacing: 8,
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: SizedBox(
                height: 24,
                width: 24,
                child: ColorFiltered(
                  colorFilter: ColorFilter.mode(
                    context.appColors.textIconColor.secondary,
                    BlendMode.srcIn,
                  ),
                  child: icon,
                ),
              ),
            ),
            Expanded(
              child: Text(
                title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ).labelMd(color: context.appColors.textIconColor.primary),
            ),
            SizedBox(
              height: 20,
              width: 20,
              child: Assets.svg.iconArrowRight.path.toSvgImage(
                fit: BoxFit.contain,
                colorFilter: ColorFilter.mode(
                  context.appColors.textIconColor.secondary,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
