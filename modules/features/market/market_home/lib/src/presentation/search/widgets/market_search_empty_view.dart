import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:market_home/src/core/extension.dart';

class MarketSearchEmptyView extends StatelessWidget {
  const MarketSearchEmptyView({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 48),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 24,
        children: [
          Assets.svg.worldMagnifier.path.toSvgImage(
            width: 80,
            height: 80,
            fit: BoxFit.contain,
            tintColor: colors.textIconColor.tertiary,
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            spacing: 8,
            children: [
              Text(
                context.localization.market_search_not_found_title,
                textAlign: TextAlign.center,
              ).h2(color: colors.textIconColor.primary),
              Text(
                context.localization.market_search_not_found_message,
                textAlign: TextAlign.center,
              ).bodyMd(color: colors.textIconColor.secondary),
            ],
          ),
        ],
      ),
    );
  }
}
