import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:finance/src/core/extension.dart';
import 'package:finance/src/presentation/payment/widgets/payment_add_card_button.dart';
import 'package:finance/src/presentation/payment/widgets/payment_card_tile.dart';
import 'package:finance/src/presentation/payment/widgets/payment_chip.dart';
import 'package:flutter/material.dart';

class PaymentMethodCard extends StatelessWidget {
  final CardItem? selectedCard;
  final VoidCallback onChangeCard;
  final VoidCallback onAddCard;

  const PaymentMethodCard({
    super.key,
    required this.selectedCard,
    required this.onChangeCard,
    required this.onAddCard,
  });

  @override
  Widget build(BuildContext context) {
    final card = selectedCard;

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: context.appColors.background.elevation1,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Text(
              context.localization.payment_method_title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ).h3(),
          ),
          if (card != null)
            Row(
              spacing: 8,
              children: [
                Expanded(child: PaymentCardTile(card: card)),
                PaymentChip(
                  text: context.localization.action_change,
                  onTap: onChangeCard,
                ),
              ],
            )
          else
            PaymentAddCardButton(onTap: onAddCard),
        ],
      ),
    );
  }
}
