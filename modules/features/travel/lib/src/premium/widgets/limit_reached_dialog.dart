import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart';
import 'package:travel/src/core/extension.dart';
import 'package:travel/src/premium/widgets/premium_alert_dialog.dart';

class LimitReachedDialog extends StatelessWidget {
  const LimitReachedDialog({super.key});

  static Future<void> show(BuildContext context) {
    return showDialog(
      context: context,
      builder: (_) => const LimitReachedDialog(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return PremiumAlertDialog(
      title: context.localization.premiumLimitReachedTitle,
      description: context.localization.premiumLimitReachedDesc,
      actionText: context.localization.premiumLearnMore,
      onAction: () {
        Navigator.of(context).pop();
        context.pushNamed(AppNavPath.travel.premiumOnboardingPage.name);
      },
    );
  }
}
