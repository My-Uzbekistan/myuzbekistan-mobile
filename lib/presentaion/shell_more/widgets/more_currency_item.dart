import 'package:collection/collection.dart';
import 'package:component_res/component_res.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:uzbekistan_travel/core/extensions/context_extension.dart';
import 'package:uzbekistan_travel/presentaion/shell_more/widgets/extensions.dart';

class MoreCurrencyItem extends StatelessWidget {
  final List<Currency> currencies;
  final VoidCallback? onTap;

  const MoreCurrencyItem({super.key, this.currencies = const [],this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(24),
      onTap: onTap,
      child: Ink(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: context.appColors.background.elevation1Alt),
        child: Row(
            spacing: 2,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: currencies
                .filterCurrencies(allowCcy: ["USD", "EUR"])
                .take(2)
                .mapIndexed((index, e) => Flexible(
                        child: Container(
                      alignment: index == 0
                          ? Alignment.centerLeft
                          : Alignment.centerRight,
                      child: _Item(
                        currency: e,
                      ),
                    )))
                .toList()),
      ),
    );
  }
}

class _Item extends StatelessWidget {
  final Currency currency;

  const _Item({super.key, required this.currency});

  @override
  Widget build(BuildContext context) {
    final flag = currency.getFlag();
    return Row(
      spacing: 4,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (flag.isNotEmpty)
          CircleAvatar(
            radius: 10,
            child: flag.toSvgImage(fit: BoxFit.contain),
          ),
        Text(
          currency.ccy ?? "",
          style: CustomTypography.bodyMd
              .copyWith(color: context.appColors.textIconColor.secondary),
        ),
        Flexible(
            child: Text(
          context.localizations!.currency_uzs(currency.rateFormatted()),
          style: CustomTypography.bodyMd,
          overflow: TextOverflow.ellipsis,
        ))
      ],
    );
  }
}
