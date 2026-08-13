import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:finance/src/core/extension.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart';

class TransactionDetailActions extends StatelessWidget {
  final PaymentStatus status;
  final String taxQr;

  const TransactionDetailActions({
    super.key,
    required this.status,
    required this.taxQr,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        spacing: 12,
        children: [
          AppActionButton(
            actionText: context.localization.back_to_home,
            sizeType: ActionButtonSizeType.large,
            onPressed: () => context.travel.goMain(),
          ),
          if (status == PaymentStatus.success && taxQr.isNotEmpty)
            AppActionButton(
              actionText: context.localization.fiscalReceipt,
              type: ActionButtonType.text,
              sizeType: ActionButtonSizeType.large,
              icon: Assets.svg.fiscalIcon.path.toSvgImage(
                fit: BoxFit.contain,
              ),
              onPressed: () => LauncherUtils.urlLauncher(taxQr),
            ),
          if (status == PaymentStatus.cancelled)
            AppActionButton(
              actionText: context.localization.action_retry,
              type: ActionButtonType.secondary,
              sizeType: ActionButtonSizeType.large,
              icon: Assets.svg.iconArrowsCw.path.toSvgImage(
                fit: BoxFit.contain,
              ),
              onPressed: () => context.pop(),
            ),
        ],
      ),
    );
  }
}
