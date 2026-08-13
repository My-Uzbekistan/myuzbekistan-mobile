import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';

class PaymentStatusBadge extends StatelessWidget {
  static const double size = 100;

  final PaymentStatus status;

  const PaymentStatusBadge({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    final asset = switch (status) {
      PaymentStatus.success => Assets.png.paymentStatusSuccess,
      PaymentStatus.cancelled => Assets.png.paymentStatusCancelled,
      PaymentStatus.pending ||
      PaymentStatus.refunded => Assets.png.paymentStatusPending,
    };

    return SizedBox(
      height: size,
      child: Center(
        child: asset.image(
          width: size,
          height: size,
          fit: BoxFit.contain,
          filterQuality: FilterQuality.medium,
        ),
      ),
    );
  }
}
