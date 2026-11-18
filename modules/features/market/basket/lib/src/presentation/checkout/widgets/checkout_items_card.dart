import 'package:basket/src/core/extension.dart';
import 'package:basket/src/presentation/basket/widgets/basket_item_image.dart';
import 'package:basket/src/presentation/basket/widgets/basket_quantity_stepper.dart';
import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

class CheckoutItemsCard extends StatelessWidget {
  const CheckoutItemsCard({
    super.key,
    required this.items,
    required this.onItemTap,
    required this.onQuantityChanged,
    required this.onRemoveItem,
  });

  final List<CartItem> items;
  final ValueChanged<CartItem> onItemTap;
  final void Function(CartItem item, int quantity) onQuantityChanged;
  final ValueChanged<CartItem> onRemoveItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: context.appColors.background.elevation1,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        spacing: 16,
        children: [for (final item in items) _tile(context, item)],
      ),
    );
  }

  Widget _tile(BuildContext context, CartItem item) {
    return GestureDetector(
      key: ValueKey(item.productId),
      behavior: HitTestBehavior.opaque,
      onTap: () => onItemTap(item),
      child: Row(
        spacing: 12,
        children: [
          BasketItemImage(photo: item.photo),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 4,
              children: [
                Text(
                  item.name,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ).labelMd(color: context.appColors.textIconColor.primary),
                if (item.categoryName.isNotEmpty)
                  Text(
                    item.categoryName,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ).bodySm(color: context.appColors.textIconColor.secondary),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  spacing: 2,
                  children: [
                    Text(
                      item.price.amountFormatted(),
                    ).labelMd(color: context.appColors.textIconColor.primary),
                    Text(
                      context.localization.basket_currency_som,
                    ).bodySm(color: context.appColors.textIconColor.tertiary),
                  ],
                ),
              ],
            ),
          ),
          BasketQuantityStepper(
            item: item,
            onQuantityChanged: (quantity) => onQuantityChanged(item, quantity),
            onRemove: () => onRemoveItem(item),
          ),
        ],
      ),
    );
  }
}
