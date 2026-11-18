import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:market_home/src/core/extension.dart';
import 'package:market_home/src/presentation/search/widgets/shimmer/market_search_hints_shimmer.dart';

class MarketSearchHints extends StatelessWidget {
  const MarketSearchHints({
    super.key,
    required this.history,
    required this.suggestions,
    required this.isLoading,
    required this.onSubmit,
    required this.onRemoveHistory,
  });

  final List<MarketSearchHistory> history;
  final List<String> suggestions;
  final bool isLoading;
  final ValueChanged<String> onSubmit;
  final ValueChanged<int> onRemoveHistory;

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return const Column(
        spacing: 8,
        children: [
          MarketSearchHintsShimmer(),
          MarketSearchHintsShimmer(rowCount: 5),
        ],
      );
    }

    return Column(
      spacing: 8,
      children: [
        if (history.isNotEmpty)
          _card(
            context,
            title: context.localization.market_search_history,
            children: [
              for (final item in history)
                _row(
                  context,
                  icon: Assets.svg.iconTime.path,
                  title: item.query,
                  trailing: Assets.svg.iconClose.path,
                  onTap: () => onSubmit(item.query),
                  onTrailingTap: () => onRemoveHistory(item.id),
                ),
            ],
          ),
        if (suggestions.isNotEmpty)
          _card(
            context,
            title: context.localization.market_search_suggestions,
            children: [
              for (final item in suggestions)
                _row(
                  context,
                  icon: Assets.svg.searchLine.path,
                  title: item,
                  trailing: Assets.svg.prayers.chevronRight.path,
                  onTap: () => onSubmit(item),
                ),
            ],
          ),
      ],
    );
  }

  Widget _card(
    BuildContext context, {
    required String title,
    required List<Widget> children,
  }) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: context.appColors.background.base,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 16,
        children: [
          Text(
            title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ).labelLg(color: context.appColors.textIconColor.primary),
          ...children,
        ],
      ),
    );
  }

  Widget _row(
    BuildContext context, {
    required String icon,
    required String title,
    required String trailing,
    required VoidCallback onTap,
    VoidCallback? onTrailingTap,
  }) {
    final colors = context.appColors;

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: Row(
        spacing: 8,
        children: [
          icon.toSvgImage(
            width: 24,
            height: 24,
            fit: BoxFit.contain,
            tintColor: colors.textIconColor.secondary,
          ),
          Expanded(
            child: Text(
              title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ).bodyLg(color: colors.textIconColor.secondary),
          ),
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: onTrailingTap ?? onTap,
            child: trailing.toSvgImage(
              width: 24,
              height: 24,
              fit: BoxFit.contain,
              tintColor: colors.textIconColor.tertiary,
            ),
          ),
        ],
      ),
    );
  }
}
