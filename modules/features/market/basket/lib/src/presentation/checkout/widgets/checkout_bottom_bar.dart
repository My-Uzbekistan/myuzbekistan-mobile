import 'package:basket/src/core/extension.dart';
import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

class CheckoutBottomBar extends StatelessWidget {
  const CheckoutBottomBar({
    super.key,
    required this.total,
    required this.isLoading,
    this.onOrder,
    this.onBlocked,
  });

  final int total;
  final bool isLoading;
  final VoidCallback? onOrder;
  final VoidCallback? onBlocked;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: context.appColors.background.elevation1,
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(24),
        ),
        boxShadow: [
          BoxShadow(
            color: context.appColors.service.shadow,
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
                    ).h3(color: context.appColors.textIconColor.primary),
                    Text(
                      context.localization.basket_currency_som,
                    ).bodySm(color: context.appColors.textIconColor.secondary),
                  ],
                ),
                Text(
                  context.localization.basket_checkout_total,
                ).bodySm(color: context.appColors.textIconColor.secondary),
              ],
            ),
            Expanded(
              child: GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: onOrder == null && !isLoading ? onBlocked : null,
                child: AppActionButton(
                  actionText: context.localization.basket_checkout_order,
                  isLoading: isLoading,
                  onPressed: onOrder,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
