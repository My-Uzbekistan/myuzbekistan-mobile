import 'package:basket/src/core/extension.dart';
import 'package:basket/src/presentation/basket/widgets/basket_item_image.dart';
import 'package:basket/src/presentation/basket/widgets/basket_quantity_stepper.dart';
import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

class BasketItemTile extends StatelessWidget {
  const BasketItemTile({
    super.key,
    required this.item,
    required this.onQuantityChanged,
    required this.onRemove,
  });

  final CartItem item;
  final ValueChanged<int> onQuantityChanged;
  final VoidCallback onRemove;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
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
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: BasketQuantityStepper(
                    item: item,
                    onQuantityChanged: onQuantityChanged,
                    onRemove: onRemove,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
