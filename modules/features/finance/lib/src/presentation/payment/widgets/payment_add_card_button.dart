import 'package:component_res/component_res.dart';
import 'package:finance/src/core/extension.dart';
import 'package:flutter/material.dart';

class PaymentAddCardButton extends StatelessWidget {
  final VoidCallback? onTap;

  const PaymentAddCardButton({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: Container(
        height: 56,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: context.appColors.background.elevation1Alt,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Opacity(
          opacity: 0.8,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            spacing: 8,
            children: [
              ColorFiltered(
                colorFilter: ColorFilter.mode(
                  context.appColors.textIconColor.primary,
                  BlendMode.srcIn,
                ),
                child: Assets.svg.iconPlus.svg(width: 28, height: 28),
              ),
              Text(context.localization.addCard).labelMd(),
            ],
          ),
        ),
      ),
    );
  }
}
