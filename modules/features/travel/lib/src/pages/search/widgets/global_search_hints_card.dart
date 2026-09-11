import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:travel/src/core/extension.dart';

class GlobalSearchHintsCard extends StatelessWidget {
  final String title;
  final List<String> hints;
  final VoidCallback? onClear;
  final ValueChanged<int> onHintTap;
  final ValueChanged<int>? onHintRemove;

  const GlobalSearchHintsCard({
    super.key,
    required this.title,
    required this.hints,
    required this.onHintTap,
    this.onClear,
    this.onHintRemove,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;

    return Container(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
      decoration: BoxDecoration(
        color: colors.background.elevation1,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 4,
        children: [
          Row(
            spacing: 10,
            children: [
              Expanded(
                child: Text(
                  title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ).labelMd(color: colors.textIconColor.secondary),
              ),
              if (onClear != null)
                GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: onClear,
                  child: Text(
                    context.localization.global_search_history_clear,
                  ).labelMd(color: colors.brandSeaBlue),
                ),
            ],
          ),
          for (final (index, hint) in hints.indexed)
            _row(context, index, hint),
        ],
      ),
    );
  }

  Widget _row(BuildContext context, int index, String hint) {
    final colors = context.appColors;
    final onHintRemove = this.onHintRemove;

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => onHintTap(index),
      child: SizedBox(
        height: 56,
        child: Row(
          spacing: 8,
          children: [
            Assets.svg.searchLine.path.toSvgImage(
              width: 24,
              height: 24,
              fit: BoxFit.contain,
              tintColor: colors.textIconColor.tertiary,
            ),
            Expanded(
              child: Text(
                hint,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ).bodyLg(color: colors.textIconColor.primary),
            ),
            if (onHintRemove != null)
              GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () => onHintRemove(index),
                child: Assets.svg.iconClose.path.toSvgImage(
                  width: 20,
                  height: 20,
                  fit: BoxFit.contain,
                  tintColor: colors.textIconColor.tertiary,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
