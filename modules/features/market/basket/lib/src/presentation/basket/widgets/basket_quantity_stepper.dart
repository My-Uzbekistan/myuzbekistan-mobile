import 'package:basket/src/presentation/basket/widgets/basket_round_chip.dart';
import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';

class BasketQuantityStepper extends StatelessWidget {
  const BasketQuantityStepper({
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
    final iconColor = context.appColors.textIconColor.primary;
    final disabledColor = context.appColors.textIconColor.disable;

    return Row(
      mainAxisSize: MainAxisSize.min,
      spacing: 4,
      children: [
        BasketRoundChip(
          onTap: item.isLastUnit
              ? onRemove
              : () => onQuantityChanged(item.quantity - 1),
          icon: item.isLastUnit
              ? Assets.svg.iconTrashCanLine.path.toSvgImage(
                  fit: BoxFit.contain,
                  tintColor: iconColor,
                )
              : _minusIcon(iconColor),
        ),
        SizedBox(
          width: 30,
          child: Text(
            "${item.quantity}",
            textAlign: TextAlign.center,
          ).labelLg(color: context.appColors.textIconColor.primary),
        ),
        BasketRoundChip(
          onTap: item.canIncrease
              ? () => onQuantityChanged(item.quantity + 1)
              : null,
          icon: Assets.svg.iconPlus.path.toSvgImage(
            fit: BoxFit.contain,
            tintColor: item.canIncrease ? iconColor : disabledColor,
          ),
        ),
      ],
    );
  }

  Widget _minusIcon(Color color) {
    return Center(
      child: Container(
        width: 12,
        height: 1.5,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(1.5),
        ),
      ),
    );
  }
}
