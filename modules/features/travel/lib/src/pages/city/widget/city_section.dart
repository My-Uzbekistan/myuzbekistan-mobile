import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:travel/src/core/extension.dart';

class CitySection extends StatelessWidget {
  final String? title;
  final VoidCallback? onSeeAll;
  final EdgeInsetsGeometry contentPadding;
  final bool squareTop;
  final Widget child;

  const CitySection({
    super.key,
    this.title,
    this.onSeeAll,
    this.contentPadding = const EdgeInsets.symmetric(horizontal: 16),
    this.squareTop = false,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    final title = this.title;
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        color: context.appColors.background.elevation1,
        borderRadius:
            squareTop
                ? const BorderRadius.vertical(bottom: Radius.circular(20))
                : BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (title != null)
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
              child: Row(
                spacing: 16,
                children: [
                  Expanded(
                    child:
                        Text(
                          title,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ).h3(),
                  ),
                  if (onSeeAll != null)
                    GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onTap: onSeeAll,
                      child: Text(
                        context.localization.action_all,
                      ).bodyLg(color: context.appColors.brandSeaBlue),
                    ),
                ],
              ),
            ),
          Padding(padding: contentPadding, child: child),
        ],
      ),
    );
  }
}
