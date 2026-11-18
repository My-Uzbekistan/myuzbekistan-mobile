import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:finance/src/core/extension.dart';
import 'package:flutter/material.dart';

class PaymentStatusLabel extends StatelessWidget {
  final PaymentStatus status;
  final String amount;

  const PaymentStatusLabel({
    super.key,
    required this.status,
    required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    final title = switch (status) {
      PaymentStatus.success => context.localization.payment_status_success,
      PaymentStatus.pending => context.localization.payment_status_pending,
      PaymentStatus.cancelled => context.localization.payment_status_cancelled,
      PaymentStatus.refunded => context.localization.payment_status_refunded,
    };
    final signedAmount = status == PaymentStatus.success ? "-$amount" : amount;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        spacing: 6,
        children: [
          Text(
            title,
            textAlign: TextAlign.center,
          ).h3(color: context.appColors.textIconColor.secondary),
          Text(
            signedAmount,
            textAlign: TextAlign.center,
          ).h1(color: context.appColors.textIconColor.primary),
        ],
      ),
    );
  }
}
