import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:market_home/src/core/extension.dart';
import 'package:shared/shared.dart';

class MarketOrderDetailFields extends StatelessWidget {
  const MarketOrderDetailFields({super.key, required this.order});

  final MarketOrder order;

  @override
  Widget build(BuildContext context) {
    final payment = order.payment;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 12,
      children: [
        if (payment != null)
          _field(
            context,
            label: context.localization.market_order_payment_method,
            child: _paymentValue(context, payment),
          ),
        if (order.deliveryTitle.isNotEmpty)
          _field(
            context,
            label: context.localization.market_order_receive_method,
            value: order.deliveryTitle,
          ),
        if (order.fullAddress.isNotEmpty)
          _field(
            context,
            label: context.localization.market_order_delivery_address,
            value: order.fullAddress,
          ),
        if (order.recipientPhone.isNotEmpty)
          _field(
            context,
            label: context.localization.market_order_recipient_phone,
            value: order.recipientPhone.takeLast(9).phoneFormat(),
          ),
      ],
    );
  }

  Widget _field(
    BuildContext context, {
    required String label,
    String? value,
    Widget? child,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 4,
      children: [
        Text(label).bodySm(color: context.appColors.textIconColor.secondary),
        child ??
            Text(
              value ?? "",
            ).labelMd(color: context.appColors.textIconColor.primary),
      ],
    );
  }

  Widget _paymentValue(BuildContext context, MarketOrderPayment payment) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      spacing: 4,
      children: [
        if (payment.icon.isNotEmpty)
          ExtendedImage.network(
            payment.icon,
            width: 20,
            height: 20,
            fit: BoxFit.contain,
            cache: true,
            loadStateChanged: (state) =>
                switch (state.extendedImageLoadState) {
                  LoadState.completed => state.completedWidget,
                  _ => const SizedBox(width: 20, height: 20),
                },
          ),
        Flexible(
          child: Text(
            payment.maskedPan,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ).labelMd(color: context.appColors.textIconColor.primary),
        ),
      ],
    );
  }
}
