import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:finance/src/presentation/payment/widgets/payment_avatar.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

class PaymentMerchantCard extends StatelessWidget {
  final Merchant merchant;

  const PaymentMerchantCard({super.key, required this.merchant});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: context.appColors.background.elevation1,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Row(
        spacing: 12,
        children: [
          PaymentAvatar(imageUrl: merchant.logo),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 4,
              children: [
                Text(
                  merchant.name.orEmpty(),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ).h3(),
                Text(
                  merchant.description.orEmpty(),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ).bodyMd(color: context.appColors.textIconColor.secondary),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
