import 'dart:async';
import 'dart:ui';

import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:finance/src/core/extension.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

import 'currency_widget/currency_cell.dart';

class CurrenciesPage extends HookWidget {
  final List<Currency> currencies;

  final Completer<Currency>? completer;
  final int? currentCurrencyId;
  final bool isModal;

  const CurrenciesPage({
    super.key,
    this.currencies = const [],
    this.completer,
    this.currentCurrencyId,
    this.isModal = false,
  });

  @override
  Widget build(BuildContext context) {
    final selectedCurrencyId = useState(currentCurrencyId);
    final hasSelectedCurrency = selectedCurrencyId.value != null;
    final currencyList = useState<List<Currency>>(currencies);
    useEffect(() {
      if (selectedCurrencyId.value == null && currencyList.value.isNotEmpty) {
        final updatedList = List<Currency>.from(currencyList.value)
          ..removeWhere((currency) => currency.id == -11);
        currencyList.value = updatedList;
      }
      return null;
    });

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: GradientAppBar(
        automaticallyImplyLeading: !isModal,
        title:
            selectedCurrencyId.value != null
                ? context.localization.currency_calculator
                : context.localization.exchange_rates,
        leading:
            isModal
                ? null
                : RoundedButton.arrowLeft(
                  onPressed: () {
                    context.pop();
                  },
                ),
        centerTitle: true,
        actions:
            isModal
                ? [
                  RoundedButton.closeButton(
                    onPressed: () {
                      context.pop();
                    },
                  ),
                ]
                : null,
      ),
      body: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: maxScreenWidth),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: ListView.separated(
            padding: EdgeInsets.only(
              bottom: kBottomNavigationBarHeight + 16,
              top: kToolbarHeight + 16 + MediaQuery.of(context).padding.top,
            ),
            separatorBuilder: (context, index) {
              return SizedBox(height: 8);
            },
            itemBuilder: (context, index) {
              final currency = currencyList.value[index];
              return CurrencyCell(
                currency: currency,
                onTap:
                    hasSelectedCurrency
                        ? () {
                          completer?.complete(currency);
                          context.pop();
                        }
                        : null,
                trailing:
                    hasSelectedCurrency
                        ? AppCheck(
                          isChecked: selectedCurrencyId.value == currency.id,
                        )
                        : null,
              );
            },
            itemCount: currencyList.value.length,
          ),
        ),
      ),
    );
  }
}
