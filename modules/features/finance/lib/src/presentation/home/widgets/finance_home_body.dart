import 'package:domain/domain.dart';
import 'package:finance/src/navigation/navigation_extensions.dart';
import 'package:finance/src/presentation/home/bloc/finance_bloc.dart';
import 'package:finance/src/presentation/home/widgets/currency_calculator/currency_calculator_widget.dart';
import 'package:finance/src/presentation/home/widgets/currency_rates/currency_rates_widget.dart';
import 'package:finance/src/presentation/home/widgets/nearest_places/nearest_places_widget.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';

class FinanceHomeBody extends StatelessWidget {
  final FinanceDataState state;

  const FinanceHomeBody({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    final rates = state.currencies.filterCurrencies();

    return Column(
      spacing: 12,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (state.currencies.isNotEmpty)
          CurrencyCalculatorWidget(currencies: state.currencies),
        if (rates.isNotEmpty)
          CurrencyRatesWidget(
            currencies: rates,
            onShowAll: () => context.pushCurrenciesPage(state.currencies),
          ),
        if (state.merchants.isNotEmpty)
          NearestPlacesWidget(
            merchants: state.merchants,
            onMerchantTap: (merchant) =>
                context.finance.pushMerchantPage(id: merchant.id.toString()),
            onShowAll: () => context.pushMerchantsPage(state.merchants),
          ),
      ],
    );
  }
}
