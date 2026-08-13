import 'package:component_res/component_res.dart';
import 'package:finance/src/core/extension.dart';
import 'package:finance/src/presentation/payment/widgets/payment_amount_field.dart';
import 'package:finance/src/presentation/payment/widgets/payment_chip.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

class PaymentAmountCard extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final List<int> suggestions;
  final ValueChanged<int> onSuggestionTap;

  const PaymentAmountCard({
    super.key,
    required this.controller,
    required this.focusNode,
    required this.suggestions,
    required this.onSuggestionTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: context.appColors.background.elevation1,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        spacing: 16,
        children: [
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: focusNode.requestFocus,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                spacing: 4,
                children: [
                  PaymentAmountField(
                    controller: controller,
                    focusNode: focusNode,
                  ),
                  Text(
                    context.localization.enter_amount,
                    textAlign: TextAlign.center,
                  ).labelSm(color: context.appColors.textIconColor.tertiary),
                ],
              ),
            ),
          ),
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 8,
            runSpacing: 8,
            children: [
              for (final suggestion in suggestions)
                PaymentChip(
                  text: suggestion.toDouble().amountFormatted(),
                  onTap: () => onSuggestionTap(suggestion),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
