import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:market_home/src/core/extension.dart';
import 'package:market_home/src/presentation/search/market_product_sort_label.dart';

class MarketSearchSortSheet extends StatelessWidget {
  const MarketSearchSortSheet({super.key, required this.selected});

  final MarketProductSort selected;

  static Future<MarketProductSort?> show(
    BuildContext context, {
    required MarketProductSort selected,
  }) {
    return showModalBottomSheet<MarketProductSort>(
      context: context,
      useSafeArea: true,
      backgroundColor: context.appColors.background.elevation1,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      builder: (context) => MarketSearchSortSheet(selected: selected),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 8,
        children: [
          Text(context.localization.market_sort_title).h3(
            color: context.appColors.textIconColor.primary,
          ),
          const SizedBox(height: 4),
          ...MarketProductSort.values.map(
            (sort) => GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () => Navigator.of(context).pop(sort),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  spacing: 12,
                  children: [
                    Expanded(
                      child: Text(sort.label(context)).bodyLg(
                        color: context.appColors.textIconColor.primary,
                      ),
                    ),
                    AppCheck(isChecked: sort == selected),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
