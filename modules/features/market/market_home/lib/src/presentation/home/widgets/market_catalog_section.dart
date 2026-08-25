import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:market_home/src/core/extension.dart';
import 'package:market_home/src/presentation/home/widgets/market_catalog_tile.dart';

class MarketCatalogSection extends StatelessWidget {
  const MarketCatalogSection({
    super.key,
    required this.title,
    required this.categories,
    this.onSeeAll,
    this.onCategoryTap,
  });

  final String title;
  final List<MarketCategory> categories;
  final VoidCallback? onSeeAll;
  final ValueChanged<MarketCategory>? onCategoryTap;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        margin: const EdgeInsets.only(top: 8),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: context.appColors.background.elevation1,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _title(context, title, onSeeAll),
            const SizedBox(height: 12),
            LayoutBuilder(
              builder: (context, constraints) {
                final tileWidth = (constraints.maxWidth - 7) / 2;
                return Wrap(
                  spacing: 7,
                  runSpacing: 12,
                  children: [
                    for (final category in categories)
                      SizedBox(
                        width: tileWidth,
                        child: MarketCatalogTile(
                          category: category,
                          onTap: onCategoryTap == null
                              ? null
                              : () => onCategoryTap!(category),
                        ),
                      ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _title(BuildContext context, String title, VoidCallback? onSeeAll) {
    return Row(
      children: [
        Expanded(
          child: Text(title, maxLines: 1, overflow: TextOverflow.ellipsis).h3(),
        ),
        const SizedBox(width: 16),
        GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: onSeeAll,
          child: Text(
            context.localization.market_action_all,
          ).bodyLg(color: context.appColors.brandSeaBlue),
        ),
      ],
    );
  }
}
