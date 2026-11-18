import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class TravelNavBar extends StatelessWidget {
  const TravelNavBar({
    super.key,
    this.title,
    this.subtitle,
    this.trailing,
    this.onBack,
  });

  final String? title;
  final String? subtitle;
  final Widget? trailing;
  final VoidCallback? onBack;

  @override
  Widget build(BuildContext context) {
    final title = this.title;
    final subtitle = this.subtitle;
    final trailing = this.trailing;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
      child: SizedBox(
        height: 44,
        child: Row(
          children: [
            RoundedButton.arrowLeft(onPressed: onBack),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 2,
                  children: [
                    if (title != null)
                      Text(
                        title,
                        textAlign: TextAlign.center,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ).labelLg(color: context.appColors.textIconColor.primary),
                    if (subtitle != null)
                      Text(
                        subtitle,
                        textAlign: TextAlign.center,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ).bodySm(
                        color: context.appColors.textIconColor.secondary,
                      ),
                  ],
                ),
              ),
            ),
            SizedBox.square(dimension: 44, child: trailing),
          ],
        ),
      ),
    );
  }
}
