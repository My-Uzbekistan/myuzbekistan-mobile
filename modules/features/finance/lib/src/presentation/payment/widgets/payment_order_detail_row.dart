import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';

class PaymentOrderDetailRow extends StatelessWidget {
  final CheckoutDetail detail;

  const PaymentOrderDetailRow({super.key, required this.detail});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      spacing: 4,
      children: [
        Text(
          detail.title,
        ).bodySm(color: context.appColors.textIconColor.secondary),
        Text(
          detail.value,
        ).labelMd(color: context.appColors.textIconColor.primary),
      ],
    );
  }
}
