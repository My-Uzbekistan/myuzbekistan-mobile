import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

class PaymentAvatar extends StatelessWidget {
  final String? imageUrl;

  const PaymentAvatar({super.key, this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: SizedBox(
        width: 56,
        height: 56,
        child: AppNetworkImage(
          imageUrl.orEmpty(),
          cacheMaxAge: const Duration(days: 6),
          fit: BoxFit.cover,
          placeholder: ColoredBox(color: context.appColors.fill.quaternary),
        ),
      ),
    );
  }
}
