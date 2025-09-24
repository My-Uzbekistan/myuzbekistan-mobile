import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:finance/src/core/extension.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

class CurrencyWidget extends StatelessWidget {
  final List<Currency> currencies;
  final GestureTapCallback? onTap;

  const CurrencyWidget({super.key, required this.currencies, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16).copyWith(bottom: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: context.appColors.background.elevation1,
        ),

        child: Column(
          spacing: 8,
          children: [
            Column(
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
            GestureDetector(
              onTap: onTap,
              child: Container(
                height: 36,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: context.appColors.fill.tertiary,
                ),

                child: Center(
                  child:
                      Text(context.localization.all_exchange_rates).labelSm(),
                ),
              ),
            ),
          ],
        ),
      ).shadow(context),
    );
  }
}

class _Item extends StatelessWidget {
  final Currency currency;

  const _Item({super.key, required this.currency});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(minHeight: 48),

      alignment: Alignment.centerLeft,
      padding: EdgeInsets.symmetric(vertical: 14),
      child: Row(
        spacing: 4,
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            radius: 10,
            child: ExtendedImage.network(
              currency.flag,
              cache: true,
              fit: BoxFit.cover,
              loadStateChanged: (ExtendedImageState state) {
                switch (state.extendedImageLoadState) {
                  case LoadState.completed:
                    return AnimatedOpacity(
                      opacity: 1.0,
                      duration: Duration(milliseconds: 200),
                      child: state.completedWidget,
                    ); // ✅ Default image o'zi ko'rsatiladi
                  default:
                    return SizedBox();
                }
              },
            ),
          ),
          Text(
            currency.ccy ?? "",
          ).labelMd(color: context.appColors.textIconColor.secondary),
          Flexible(
            child: Text(
              currency.rateFormatted(),
              style: CustomTypography.labelMd,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
