import 'package:component_res/component_res.dart';
import 'package:finance/src/core/extension.dart';
import 'package:finance/src/presentation/payment/amount_suffix_formatter.dart';
import 'package:flutter/material.dart';

class PaymentAmountField extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode focusNode;

  const PaymentAmountField({
    super.key,
    required this.controller,
    required this.focusNode,
  });

  @override
  Widget build(BuildContext context) {
    final amountStyle = CustomTypography.H1.copyWith(
      color: context.appColors.textIconColor.primary,
    );

    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      spacing: 4,
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(minWidth: 24),
            child: IntrinsicWidth(
              child: TextField(
                controller: controller,
                focusNode: focusNode,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                maxLines: 1,
                cursorColor: context.appColors.brand,
                style: amountStyle,
                inputFormatters: [AmountWithSuffixFormatter(suffix: "")],
                decoration: InputDecoration(
                  isCollapsed: true,
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.zero,
                  hintText: "0",
                  hintStyle: amountStyle.copyWith(
                    color: context.appColors.textIconColor.tertiary,
                  ),
                ),
              ),
            ),
          ),
        ),
        Text(
          context.localization.currency("").trim(),
        ).h2(color: context.appColors.textIconColor.tertiary),
      ],
    );
  }
}
