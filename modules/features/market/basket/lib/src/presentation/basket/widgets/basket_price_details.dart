import 'package:basket/src/core/extension.dart';
import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

class BasketPriceDetails extends StatelessWidget {
  const BasketPriceDetails({
    super.key,
    required this.productCount,
    required this.total,
  });

  final int productCount;
  final int total;

  @override
  Widget build(BuildContext context) {
    final currency = context.localization.basket_currency_som;
    final amount = "${total.amountFormatted()} $currency";

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: context.appColors.background.elevation1,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 16,
        children: [
          Text(
            context.localization.basket_price_details,
          ).labelLg(color: context.appColors.textIconColor.primary),
          Column(
            spacing: 9,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                spacing: 4,
                children: [
                  Text(
                    context.localization.basket_products_count(productCount),
                  ).bodyMd(color: context.appColors.textIconColor.secondary),
                  Text(
                    amount,
                  ).labelLg(color: context.appColors.textIconColor.primary),
                ],
              ),
              Divider(
                height: 1,
                thickness: 1,
                color: context.appColors.stroke.nonOpaque,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                spacing: 4,
                children: [
                  Text(
                    context.localization.basket_total,
                  ).labelLg(color: context.appColors.textIconColor.primary),
                  Text(
                    amount,
                  ).h3(color: context.appColors.textIconColor.primary),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
