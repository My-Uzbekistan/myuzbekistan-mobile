import 'package:basket/src/presentation/basket/widgets/basket_checkbox.dart';
import 'package:basket/src/presentation/basket/widgets/basket_item_tile.dart';
import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';

class BasketSellerSection extends StatelessWidget {
  const BasketSellerSection({
    super.key,
    required this.seller,
    required this.onToggleSeller,
    required this.onQuantityChanged,
    required this.onRemoveItem,
  });

  final CartSeller seller;
  final VoidCallback onToggleSeller;
  final void Function(CartItem item, int quantity) onQuantityChanged;
  final ValueChanged<CartItem> onRemoveItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: context.appColors.background.elevation1,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (seller.hasTitle) ...[
            _header(context),
            const SizedBox(height: 12),
          ],
          for (var index = 0; index < seller.items.length; index++) ...[
            if (index > 0) const SizedBox(height: 16),
            BasketItemTile(
              key: ValueKey(seller.items[index].productId),
              item: seller.items[index],
              onQuantityChanged: (quantity) =>
                  onQuantityChanged(seller.items[index], quantity),
              onRemove: () => onRemoveItem(seller.items[index]),
            ),
          ],
        ],
      ),
    );
  }

  Widget _header(BuildContext context) {
    return Row(
      spacing: 8,
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: context.appColors.background.underlayer,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Assets.svg.iconShop.path.toSvgImage(
            width: 24,
            height: 24,
            fit: BoxFit.contain,
            tintColor: context.appColors.textIconColor.primary,
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 4,
            children: [
              Text(
                seller.name,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ).labelMd(color: context.appColors.textIconColor.primary),
              if (seller.type.isNotEmpty)
                Text(
                  seller.type,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ).bodyMd(color: context.appColors.textIconColor.tertiary),
            ],
          ),
        ),
        BasketCheckbox(isChecked: seller.isSelected, onTap: onToggleSeller),
      ],
    );
  }
}
