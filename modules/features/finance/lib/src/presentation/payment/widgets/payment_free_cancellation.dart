import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class PaymentFreeCancellation extends StatelessWidget {
  final String title;
  final String text;

  const PaymentFreeCancellation({
    super.key,
    required this.title,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: context.appColors.background.underlayer,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        spacing: 6,
        children: [
          Text(title).labelMd(color: context.appColors.textIconColor.primary),
          Text(text).bodySm(color: context.appColors.textIconColor.tertiary),
        ],
      ),
    );
  }
}
