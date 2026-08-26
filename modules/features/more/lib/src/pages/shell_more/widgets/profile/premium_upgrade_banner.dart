import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:more/src/core/extension.dart';
import 'package:navigation/navigation.dart';

class PremiumUpgradeBanner extends StatelessWidget {
  const PremiumUpgradeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => context.pushType(AppNavPath.travel.premiumOnboardingPage),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: LinearGradient(
            begin: const Alignment(-0.65, -0.82),
            end: const Alignment(0.65, 0.82),
            colors: [
              context.appColors.accent.premiumPlan,
              context.appColors.accent.premiumPlanDark,
            ],
          ),
        ),
        child: Row(
          spacing: 12,
          children: [
            Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: context.appColors.colors.yellow,
                border: Border.all(
                  color: context.appColors.stroke.opaque,
                  width: 2,
                ),
              ),
              child: Assets.svg.premiumCheck.svg(width: 20, height: 20),
            ),
            Expanded(
              child: Text(
                context.localization.premium,
              ).labelMd(color: context.appColors.static.white),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 7),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32),
                color: context.appColors.static.white
                    .withValues(alpha: 0.2),
                border: Border.all(
                  color: context.appColors.static.white
                      .withValues(alpha: 0.7),
                  width: 2,
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                spacing: 8,
                children: [
                  Icon(
                    Icons.arrow_upward_rounded,
                    size: 16,
                    color: context.appColors.static.white,
                  ),
                  Text(
                    context.localization.upgrade,
                  ).labelSm(color: context.appColors.static.white),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
