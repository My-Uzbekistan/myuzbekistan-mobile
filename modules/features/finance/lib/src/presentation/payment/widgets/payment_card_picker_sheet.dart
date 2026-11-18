import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:finance/src/core/extension.dart';
import 'package:finance/src/presentation/payment/widgets/payment_card_tile.dart';
import 'package:flutter/material.dart';

Future<CardItem?> showPaymentCardPicker(
  BuildContext context, {
  required List<CardItem> cards,
  required int? selectedCardId,
}) {
  return showModalBottomSheet<CardItem>(
    context: context,
    backgroundColor: Colors.transparent,
    isScrollControlled: true,
    builder:
        (_) =>
            PaymentCardPickerSheet(cards: cards, selectedCardId: selectedCardId),
  );
}

class PaymentCardPickerSheet extends StatelessWidget {
  final List<CardItem> cards;
  final int? selectedCardId;

  const PaymentCardPickerSheet({
    super.key,
    required this.cards,
    required this.selectedCardId,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Container(
            width: 32,
            height: 4,
            decoration: BoxDecoration(
              color: context.appColors.static.white.withValues(alpha: 0.4),
              borderRadius: BorderRadius.circular(100),
            ),
          ),
        ),
        Flexible(
          child: Container(
            decoration: BoxDecoration(
              color: context.appColors.background.base,
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(24),
              ),
            ),
            child: SafeArea(
              top: false,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 16,
                      right: 24,
                      top: 16,
                      bottom: 8,
                    ),
                    child: Text(context.localization.payment_method_title).h3(),
                  ),
                  Flexible(
                    child: ListView.separated(
                      shrinkWrap: true,
                      padding: const EdgeInsets.only(bottom: 8),
                      itemCount: cards.length,
                      separatorBuilder:
                          (context, index) => const SizedBox(height: 4),
                      itemBuilder: (context, index) {
                        final card = cards[index];

                        return GestureDetector(
                          behavior: HitTestBehavior.opaque,
                          onTap: () => Navigator.pop(context, card),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 8,
                            ),
                            child: PaymentCardTile(
                              card: card,
                              trailing: AppCheck(
                                isChecked: card.id == selectedCardId,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
