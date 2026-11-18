import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CurrencyExchangeButton extends StatelessWidget {
  final VoidCallback onTap;

  const CurrencyExchangeButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        HapticFeedback.mediumImpact();
        onTap();
      },
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: context.appColors.colors.green,
          border: Border.all(
            color: context.appColors.background.elevation1,
            width: 6,
          ),
        ),
        child: Assets.svg.iconArrowRightLeft.path.toSvgImage(
          width: 20,
          height: 20,
          colorFilter: ColorFilter.mode(
            context.appColors.static.white,
            BlendMode.srcIn,
          ),
        ),
      ),
    );
  }
}
