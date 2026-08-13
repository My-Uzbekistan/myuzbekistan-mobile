import 'package:flutter/material.dart';
import 'package:travel/src/core/extension.dart';
import 'package:travel/src/premium/widgets/premium_alert_dialog.dart';

class PremiumSuccessDialog extends StatelessWidget {
  const PremiumSuccessDialog({super.key});

  static Future<void> show(BuildContext context) {
    return showDialog(
      context: context,
      builder: (_) => const PremiumSuccessDialog(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return PremiumAlertDialog(
      title: context.localization.premiumSuccessTitle,
      description: context.localization.premiumSuccessSubtitle,
    );
  }
}
