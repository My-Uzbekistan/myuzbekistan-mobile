import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:market_home/src/core/extension.dart';

class MarketDetailBottomBar extends StatelessWidget {
  const MarketDetailBottomBar({
    super.key,
    required this.detail,
    required this.onBuyNow,
    required this.onCartQuantityChanged,
  });

  final MarketProductDetail detail;
  final VoidCallback onBuyNow;
  final ValueChanged<int> onCartQuantityChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            spacing: 16,
            children: [
              Expanded(
                child: AppActionButton(
                  type: ActionButtonType.secondary,
                  actionText: context.localization.market_detail_buy_now,
                  disable: !detail.isAvailable,
                  onPressed: onBuyNow,
                ),
              ),
              Expanded(child: _cartAction(context)),
            ],
          ),
        ),
        SizedBox(height: MediaQuery.paddingOf(context).bottom + 8),
      ],
    ).shadow(
      context,
      backgroundColor: context.appColors.textIconColor.oposite,
      borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
    );
  }

  Widget _cartAction(BuildContext context) {
    if (detail.cartQuantity == 0) {
      return AppActionButton(
        actionText: detail.isAvailable
            ? context.localization.market_detail_add_to_cart
            : context.localization.market_detail_out_of_stock,
        disable: !detail.isAvailable,
        onPressed: () => onCartQuantityChanged(1),
      );
    }

    final white = context.appColors.static.white;
    final canIncrease = detail.cartQuantity < detail.available;

    return Container(
      height: 44,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      decoration: BoxDecoration(
        color: context.appColors.brandSeaBlue,
        borderRadius: BorderRadius.circular(32),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () => onCartQuantityChanged(detail.cartQuantity - 1),
            child: CartGlyphIcon(glyph: CartGlyph.minus, color: white),
          ),
          Text("${detail.cartQuantity}").labelMd(color: white),
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: canIncrease
                ? () => onCartQuantityChanged(detail.cartQuantity + 1)
                : null,
            child: CartGlyphIcon(
              glyph: CartGlyph.plus,
              color: canIncrease ? white : white.withValues(alpha: 0.4),
            ),
          ),
        ],
      ),
    );
  }
}
