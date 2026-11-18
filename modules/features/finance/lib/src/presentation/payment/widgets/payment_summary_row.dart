import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class PaymentSummaryRow extends StatelessWidget {
  final String label;
  final String value;
  final bool isTotal;

  const PaymentSummaryRow({
    super.key,
    required this.label,
    required this.value,
    this.isTotal = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      spacing: 4,
      children: [
        isTotal
            ? Text(label).labelLg(color: context.appColors.textIconColor.primary)
            : Text(
                label,
              ).bodyMd(color: context.appColors.textIconColor.secondary),
        isTotal
            ? Text(value).h3(color: context.appColors.textIconColor.primary)
            : Text(
                value,
              ).labelLg(color: context.appColors.textIconColor.primary),
      ],
    );
  }
}
