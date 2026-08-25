import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart';
import 'package:travel/src/core/extension.dart';

class PremiumAlertDialog extends StatelessWidget {
  final String title;
  final String? description;
  final String? actionText;
  final VoidCallback? onAction;

  const PremiumAlertDialog({
    super.key,
    required this.title,
    this.description,
    this.actionText,
    this.onAction,
  });

  static Future<void> showSuccess(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) => PremiumAlertDialog(
        title: context.localization.premiumSuccessTitle,
        description: context.localization.premiumSuccessSubtitle,
      ),
    );
  }

  static Future<void> showLimitReached(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) => PremiumAlertDialog(
        title: context.localization.premiumLimitReachedTitle,
        description: context.localization.premiumLimitReachedDesc,
        actionText: context.localization.premiumLearnMore,
        onAction: () => _openOnboarding(context),
      ),
    );
  }

  static Future<void> showPremiumRequired(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) => PremiumAlertDialog(
        title: context.localization.premiumServiceLocked,
        actionText: context.localization.premiumLearnMore,
        onAction: () => _openOnboarding(context),
      ),
    );
  }

  static void _openOnboarding(BuildContext context) {
    Navigator.of(context).pop();
    context.pushNamed(AppNavPath.travel.premiumOnboardingPage.name);
  }

  @override
  Widget build(BuildContext context) {
    final description = this.description;
    final actionText = this.actionText;

    return Dialog(
      backgroundColor: context.appColors.background.elevation2,
      insetPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 300),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            spacing: 8,
            children: [
              Assets.png.iconPremium.image(width: 80, height: 80),
              Column(
                mainAxisSize: MainAxisSize.min,
                spacing: 10,
                children: [
                  Text(
                    title,
                    textAlign: TextAlign.center,
                  ).h2(color: context.appColors.textIconColor.primary),
                  if (description != null)
                    Text(
                      description,
                      textAlign: TextAlign.center,
                    ).bodyMd(color: context.appColors.textIconColor.primary),
                  if (actionText != null)
                    AppActionButton(
                      actionText: actionText,
                      type: ActionButtonType.secondary,
                      contentColor: context.appColors.brand,
                      onPressed: onAction,
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
