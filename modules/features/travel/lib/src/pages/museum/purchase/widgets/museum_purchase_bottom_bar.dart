import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:travel/src/core/extension.dart';
import 'package:shared/shared.dart';

class MuseumPurchaseBottomBar extends StatelessWidget {
  const MuseumPurchaseBottomBar({
    super.key,
    required this.totalAmount,
    required this.isEnabled,
    required this.isLoading,
    required this.onPay,
  });

  final int totalAmount;
  final bool isEnabled;
  final bool isLoading;
  final VoidCallback onPay;

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            spacing: 16,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 2,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    spacing: 2,
                    children: [
                      Text(
                        totalAmount.amountFormatted(),
                      ).h3(color: colors.textIconColor.primary),
                      Text(
                        context.localization.museum_currency_som,
                      ).bodySm(color: colors.textIconColor.tertiary),
                    ],
                  ),
                  Text(
                    context.localization.museum_purchase_total,
                  ).bodySm(color: colors.textIconColor.tertiary),
                ],
              ),
              Expanded(
                child: AppActionButton(
                  actionText: context.localization.museum_purchase_pay,
                  isLoading: isLoading,
                  disable: !isEnabled,
                  onPressed: onPay,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: MediaQuery.paddingOf(context).bottom + 8),
      ],
    ).shadow(
      context,
      backgroundColor: colors.textIconColor.oposite,
      borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
    );
  }
}
