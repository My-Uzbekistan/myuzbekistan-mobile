import 'package:component_res/component_res.dart';
import 'package:finance/src/core/extension.dart';
import 'package:finance/src/navigation/navigation_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart';

import 'finance_hero_action_tile.dart';

class FinanceHeroActions extends StatelessWidget {
  const FinanceHeroActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16).copyWith(
        top: 16,
        bottom: 16,
      ),
      child: AdaptiveGlassRow(
        borderRadius: 20,
        blur: 2,
        spacing: 8,
        tint: context.appColors.service.glass,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        items: [
          AdaptiveGlassRowItem(
            onTap: _withHaptic(() => context.finance.pushQrCoderReaderPage()),
            child: FinanceHeroActionTile(
              label: context.localization.payment_qr_title,
              iconPath: Assets.svg.iconQrCode.path,
            ),
          ),
          AdaptiveGlassRowItem(
            onTap: _withHaptic(() => context.pushCardsPage()),
            child: FinanceHeroActionTile(
              label: context.localization.my_cards_title,
              iconPath: Assets.svg.iconFilledDoubleCardCard.path,
            ),
          ),
          AdaptiveGlassRowItem(
            onTap: _withHaptic(() => context.pushPaymentHistoryPage()),
            child: FinanceHeroActionTile(
              label: context.localization.payment_history_title,
              iconPath: Assets.svg.iconClock.path,
            ),
          ),
        ],
      ),
    );
  }
}

VoidCallback _withHaptic(VoidCallback onTap) {
  return () {
    HapticFeedback.mediumImpact();
    onTap();
  };
}
