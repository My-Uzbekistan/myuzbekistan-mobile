import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:market_home/src/core/extension.dart';
import 'package:shared/shared.dart';

class MarketProductsSection extends StatelessWidget {
  const MarketProductsSection({
    super.key,
    required this.block,
    required this.onFavoriteTap,
    required this.onCartQuantityChanged,
    this.onSeeAll,
    this.onProductTap,
  });

  final MarketBlock block;
  final ValueChanged<MarketProduct> onFavoriteTap;
  final void Function(MarketProduct product, int quantity)
      onCartQuantityChanged;
  final VoidCallback? onSeeAll;
  final ValueChanged<MarketProduct>? onProductTap;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        margin: const EdgeInsets.only(top: 8),
        padding: const EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: context.appColors.background.elevation1,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: _title(context, block.title, onSeeAll),
            ),
            const SizedBox(height: 12),
            SizedBox(
              height: 236,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemCount: block.products.length,
                separatorBuilder: (_, __) => const SizedBox(width: 16),
                itemBuilder: (context, index) {
                  final product = block.products[index];
                  return ProductCard(
                    key: ValueKey(product.id),
                    width: 156,
                    images: product.photos,
                    title: product.name,
                    priceText: product.price.amountFormatted(),
                    currency: context.localization.market_currency_som,
                    isFavorite: product.isFavorite,
                    onFavoriteTap: () => onFavoriteTap(product),
                    cartCount: product.cartQuantity,
                    onCartCountChanged: (quantity) =>
                        onCartQuantityChanged(product, quantity),
                    onTap: onProductTap == null
                        ? null
                        : () => onProductTap!(product),
                  );
                },
              ),
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
