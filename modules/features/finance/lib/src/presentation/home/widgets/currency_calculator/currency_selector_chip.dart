import 'dart:math';

import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:finance/src/presentation/widgets/currency_flag.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared/shared.dart';

class CurrencySelectorChip extends StatelessWidget {
  final Currency currency;
  final VoidCallback? onTap;

  const CurrencySelectorChip({
    super.key,
    required this.currency,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap == null
          ? null
          : () {
              HapticFeedback.selectionClick();
              onTap?.call();
            },
      child: SizedBox(
        height: 30,
        child: Row(
          spacing: 6,
          mainAxisSize: MainAxisSize.min,
          children: [
            CurrencyFlag(currency: currency, size: 28),
            Text(
              currency.ccy.orEmpty(),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: CustomTypography.labelLg,
            ),
            Transform.rotate(
              angle: pi / 2,
              child: Assets.svg.iconArrowRight.path.toSvgImage(
                width: 16,
                height: 16,
                colorFilter: ColorFilter.mode(
                  context.appColors.textIconColor.primary,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
