import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:more/src/core/extension.dart';
import 'package:more/src/pages/shell_more/widgets/extensions.dart';
import 'package:shared/shared.dart';

class CurrenciesPage extends StatelessWidget {
  final List<Currency> currencies;

  const CurrenciesPage({super.key, this.currencies = const []});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(context.localization.exchange_rates)),
      body: SafeArea(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: maxScreenWidth),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 16,
                        children: [
                          Container(
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              color: context.appColors.background.elevation1Alt,
                            ),
                            child: Column(
                              children:
                                  currencies
                                      .map((e) => _Cell(currency: e))
                                      .toList(),
                            ),
                          ),
                          Text(
                            context.localization.uzbek_currency,
                            style: CustomTypography.bodyMd.copyWith(),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: double.maxFinite,
                  height: 48,
                  child: FilledButton.tonal(
                    onPressed: () {
                      LauncherUtils.urlLauncher("https://bank.uz/uz/currency");
                    },
                    style: FilledButton.styleFrom(
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      backgroundColor: context.appColors.brand,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      spacing: 4,
                      children: [
                        Flexible(
                          child: Text(
                            context.localization.exchange_banks,
                            style: CustomTypography.labelLg,
                          ),
                        ),
                        Assets.svgIconArrowRight.toSvgImage(
                          colorFilter: ColorFilter.mode(
                            Colors.white,
                            BlendMode.srcIn,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Cell extends StatelessWidget {
  final Currency currency;

  const _Cell({super.key, required this.currency});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Row(
        children: [
          Flexible(
            child: Container(
              child: Row(
                spacing: 12,
                children: [
                  CircleAvatar(
                    radius: 10,
                    child: currency.getFlag().toSvgImage(),
                  ),
                  Flexible(child: Text("1 ${currency.ccy}")),
                ],
              ),
            ),
          ),
          Flexible(
            child: Container(
              alignment: Alignment.centerRight,
              child: Text(
                context.localization.currency_uzs(currency.rateFormatted()),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
