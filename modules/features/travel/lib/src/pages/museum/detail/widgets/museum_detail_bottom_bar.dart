import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:travel/src/core/extension.dart';
import 'package:shared/shared.dart';

class MuseumDetailBottomBar extends StatelessWidget {
  const MuseumDetailBottomBar({
    super.key,
    required this.detail,
    required this.onBuy,
  });

  final MuseumDetail detail;
  final VoidCallback onBuy;

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
              Row(
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                spacing: 2,
                children: [
                  Text(
                    context.localization.museum_price_from(
                      detail.priceFrom.amountFormatted(),
                    ),
                  ).h3(color: colors.textIconColor.primary),
                  Text(
                    context.localization.museum_currency_som,
                  ).bodySm(color: colors.textIconColor.tertiary),
                ],
              ),
              Expanded(
                child: AppActionButton(
                  actionText: context.localization.museum_detail_buy,
                  onPressed: onBuy,
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
