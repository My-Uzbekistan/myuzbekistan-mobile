import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class CurrencyCalculatorInput extends StatelessWidget {
  final Widget amount;
  final Widget chip;
  final bool filled;

  const CurrencyCalculatorInput({
    super.key,
    required this.amount,
    required this.chip,
    this.filled = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: filled
            ? context.appColors.fill.quaternary
            : context.appColors.background.elevation1,
        border: filled
            ? null
            : Border.all(color: context.appColors.stroke.opaque),
      ),
      child: Row(
        children: [
          Expanded(child: amount),
          const SizedBox(width: 8),
          chip,
        ],
      ),
    );
  }
}
