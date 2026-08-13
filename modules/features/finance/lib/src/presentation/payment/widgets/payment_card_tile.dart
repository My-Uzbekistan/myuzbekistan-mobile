import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:finance/src/presentation/payment/widgets/payment_avatar.dart';
import 'package:flutter/material.dart';

class PaymentCardTile extends StatelessWidget {
  final CardItem card;
  final Widget? trailing;

  const PaymentCardTile({super.key, required this.card, this.trailing});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 12,
      children: [
        PaymentAvatar(imageUrl: card.image),
        Expanded(
          child: Text(
            card.shortMaskedNumber ?? card.cardTitle,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ).h3(),
        ),
        if (trailing != null) trailing!,
      ],
    );
  }
}
