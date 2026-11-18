import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class MarketDetailActions extends StatelessWidget {
  const MarketDetailActions({
    super.key,
    required this.isFavorite,
    required this.onBack,
    this.onShareTap,
    this.onFavoriteTap,
  });

  final bool isFavorite;
  final VoidCallback onBack;
  final VoidCallback? onShareTap;
  final VoidCallback? onFavoriteTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ).copyWith(top: MediaQuery.paddingOf(context).top),
      child: Row(
        children: [
          RoundedButton.arrowLeft(onPressed: onBack),
          const Spacer(),
          Row(
            spacing: 8,
            children: [
              if (onShareTap != null)
                RoundedButton(
                  onPressed: onShareTap,
                  assetsSvgIcon: Assets.svg.iconShare.path,
                ),
              if (onFavoriteTap != null)
                RoundedButton(
                  onPressed: onFavoriteTap,
                  assetsSvgIcon: isFavorite
                      ? Assets.svg.iconFilledHeard.path
                      : Assets.svg.outlineHeard.path,
                  iconColor: isFavorite ? context.appColors.colors.red : null,
                ),
            ],
          ),
        ],
      ),
    );
  }
}
