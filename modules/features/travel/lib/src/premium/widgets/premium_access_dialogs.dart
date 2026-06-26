import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart';
import 'package:travel/src/core/extension.dart';

class PremiumRequiredDialog extends StatelessWidget {
  const PremiumRequiredDialog({super.key});

  static Future<void> show(BuildContext context) {
    return showDialog(
      context: context,
      builder: (_) => const PremiumRequiredDialog(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: context.appColors.background.elevation3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 28),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Assets.png.iconPremium.image(height: 72),
            const SizedBox(height: 16),
            Text(
              context.localization.premiumServiceLocked,
              style: CustomTypography.H2.copyWith(
                color: context.appColors.textIconColor.primary,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 12),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
                context.pushNamed(AppNavPath.travel.premiumOnboardingPage.name);
              },
              child: Text(
                context.localization.premiumLearnMore,
                style: CustomTypography.bodyMd.copyWith(
                  color: context.appColors.colors.green,
                  decoration: TextDecoration.underline,
                  decorationColor: context.appColors.colors.green,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

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
    return Dialog(
      backgroundColor: context.appColors.background.elevation3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 28),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Assets.png.iconPremium.image(height: 72),
            const SizedBox(height: 16),
            Text(
              context.localization.premiumLimitReachedTitle,
              style: CustomTypography.H2.copyWith(
                color: context.appColors.textIconColor.primary,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            Text(
              context.localization.premiumLimitReachedDesc,
              style: CustomTypography.bodyMd.copyWith(
                color: context.appColors.textIconColor.secondary,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 12),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
                context.pushNamed(AppNavPath.travel.premiumOnboardingPage.name);
              },
              child: Text(
                context.localization.premiumLearnMore,
                style: CustomTypography.bodyMd.copyWith(
                  color: context.appColors.colors.green,
                  decoration: TextDecoration.underline,
                  decorationColor: context.appColors.colors.green,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
