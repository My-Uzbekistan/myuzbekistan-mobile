import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class SubscriptionInfoRow extends StatelessWidget {
  final String label;
  final String value;

  const SubscriptionInfoRow({
    super.key,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 8,
      children: [
        Expanded(
          child: Text(
            label,
          ).bodyMd(color: context.appColors.textIconColor.secondary),
        ),
        Text(
          value,
          textAlign: TextAlign.right,
        ).labelMd(color: context.appColors.textIconColor.primary),
      ],
    );
  }
}
