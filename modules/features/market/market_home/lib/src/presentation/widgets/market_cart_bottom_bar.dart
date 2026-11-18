import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:market_home/src/core/extension.dart';
import 'package:shared/shared.dart';

class MarketCartBottomBar extends StatelessWidget {
  const MarketCartBottomBar({super.key, required this.total, this.onTap});

  final int total;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;

    return DecoratedBox(
      decoration: BoxDecoration(
        color: colors.background.elevation1,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
        boxShadow: [
          BoxShadow(
            color: colors.static.black.withValues(alpha: 0.1),
            blurRadius: 34,
            offset: const Offset(6, 0),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.only(
          top: 8,
          left: 16,
          right: 16,
          bottom: MediaQuery.paddingOf(context).bottom + 8,
        ),
        child: Row(
          spacing: 24,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              spacing: 2,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  mainAxisSize: MainAxisSize.min,
                  spacing: 2,
                  children: [
                    Text(
                      total.amountFormatted(),
                    ).h3(color: colors.textIconColor.primary),
                    Text(
                      context.localization.market_currency_som,
                    ).bodySm(color: colors.textIconColor.secondary),
                  ],
                ),
                Text(
                  context.localization.market_cart_total,
                ).bodySm(color: colors.textIconColor.secondary),
              ],
            ),
            Expanded(
              child: AppActionButton(
                actionText: context.localization.market_cart_go_to_cart,
                onPressed: onTap,
                icon: Assets.svg.tabIconBasket.path.toSvgImage(
                  width: 20,
                  height: 20,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
