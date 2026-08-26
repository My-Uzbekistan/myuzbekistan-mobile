import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

class PaymentAvatar extends StatelessWidget {
  final String? imageUrl;

  const PaymentAvatar({super.key, this.imageUrl});

  static const size = 56.0;
  static const radius = 16.0;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: SizedBox(
        width: size,
        height: size,
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
