import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

class CurrencyWidget extends StatelessWidget {
  final List<Currency> currencies;
  final GestureTapCallback? onTap;

  const CurrencyWidget({super.key, required this.currencies,this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: GestureDetector(
        onTap:onTap,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: context.appColors.background.elevation1,
          ),

          child: Column(
            children:
                currencies
                    .filterCurrencies()
                    .take(4)
                    .chunked(2)
                    .map(
                      (e) => Row(
                        children: [
                          Expanded(child: _Item(currency: e[0])),
                          Expanded(
                            child:
                                e.length > 1
                                    ? _Item(currency: e[1])
                                    : const SizedBox(),
                          ),
                        ],
                      ),
                    )
                    .toList(),
          ),
        ).shadow(context),
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
    return Container(

      constraints: BoxConstraints(
        minHeight: 48
      ),

      alignment: Alignment.centerLeft,
      padding: EdgeInsets.symmetric(vertical:14 ),
      child: Row(
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
            style: CustomTypography.labelSm.copyWith(
              color: context.appColors.textIconColor.secondary,
            ),
          ),
          Flexible(
            child: Text(
              currency.rateFormatted(),
              style: CustomTypography.labelSm,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}

extension CurrencyExtensionArray on List<Currency> {
  List<String> getFlags() {
    return map((e) => e.getFlag()).toList();
  }
}

extension CurrencyExtension on Currency {
  String getFlag() {
    return switch (ccy) {
      "USD" => Assets.flagsUs, //"🇺🇸",
      "EUR" => Assets.flagsEu, // "🇪🇺",
      "RUB" => Assets.flagsRu, //"🇷🇺",
      "CNY" => Assets.flagsCn, // "🇨🇳",
      "TRY" => Assets.flagsTr, // "🇹🇷",
      "KZT" => Assets.flagsKz, //"🇰🇿",
      "KRW" => Assets.flagsKr, // "🇰🇷",
      _ => "",
    };
  }
}
