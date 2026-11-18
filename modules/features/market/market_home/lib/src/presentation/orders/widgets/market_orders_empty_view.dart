import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:market_home/src/core/extension.dart';

class MarketOrdersEmptyView extends StatelessWidget {
  const MarketOrdersEmptyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 16,
        children: [
          Assets.svg.basketCross.path.toSvgImage(
            width: 67.76,
            height: 62.55,
            fit: BoxFit.contain,
            tintColor: context.appColors.textIconColor.tertiary,
          ),
          Column(
            spacing: 8,
            children: [
              Text(
                context.localization.market_orders_empty_title,
                textAlign: TextAlign.center,
              ).h2(color: context.appColors.textIconColor.primary),
              Text(
                context.localization.market_orders_empty_subtitle,
                textAlign: TextAlign.center,
              ).bodyMd(color: context.appColors.textIconColor.secondary),
            ],
          ),
        ],
      ),
    );
  }
}
