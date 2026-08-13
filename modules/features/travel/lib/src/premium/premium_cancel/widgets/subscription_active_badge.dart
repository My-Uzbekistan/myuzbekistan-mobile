import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:travel/src/core/extension.dart';

class SubscriptionActiveBadge extends StatelessWidget {
  const SubscriptionActiveBadge({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: context.appColors.nonOpaque.brand,
        borderRadius: BorderRadius.circular(56),
      ),
      child: Text(
        context.localization.statusActive,
      ).labelSm(color: context.appColors.brand),
    );
  }
}
