import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:market_home/src/core/extension.dart';

class MarketHomeErrorView extends StatelessWidget {
  const MarketHomeErrorView({super.key, this.onRefresh});

  final VoidCallback? onRefresh;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 24,
        children: [
          MessageContainer.custom(
            icon: Assets.png.exclamationmarkSquare.image(),
            title: context.localization.market_page_failed_to_load,
            caption: context.localization.market_something_went_wrong,
          ),
          SizedBox(
            width: double.maxFinite,
            height: 48,
            child: FilledButton(
              onPressed: onRefresh,
              style: FilledButton.styleFrom(
                elevation: 0,
                textStyle: CustomTypography.bodyLg,
                foregroundColor: context.appColors.textIconColor.primary,
                backgroundColor: context.appColors.fill.quaternary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: Text(context.localization.market_refresh),
            ),
          ),
        ],
      ),
    );
  }
}
