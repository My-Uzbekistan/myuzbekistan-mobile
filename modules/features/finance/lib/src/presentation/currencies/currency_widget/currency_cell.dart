import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:finance/src/core/extension.dart';
import 'package:flutter/material.dart';

class CurrencyCell extends StatelessWidget {
  final Currency currency;
  final Widget? trailing;

  final GestureTapCallback? onTap;

  const CurrencyCell({
    super.key,
    required this.currency,
    this.trailing,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.translucent,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        constraints: BoxConstraints(minHeight: 64),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: context.appColors.fill.quaternary,
        ),

        child: Row(
          spacing: 16,
          children: [
            SizedBox(
              height: 24,
              width: 24,
              child: ExtendedImage.network(currency.flag, fit: BoxFit.cover),
            ),
            Expanded(
              child: Column(
                spacing: 2,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("${currency.ccy}").labelLg(),
                  if (currency.title != null || currency.ccy=="UZS")
                    Text(
                      currency.ccy=="UZS"?context.localization.uzs: "${currency.title}",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ).labelSm(color: context.appColors.textIconColor.secondary),
                ],
              ),
            ),
            trailing ?? Text("${currency.rateFormatted()} UZS").labelLg(),
          ],
        ),
      ),
    );
  }
}
