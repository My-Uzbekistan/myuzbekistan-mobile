import 'dart:async';

import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:finance/src/core/extension.dart';
import 'package:finance/src/navigation/navigation_extensions.dart';
import 'package:finance/src/presentation/home/widgets/finance_section_card.dart';
import 'package:finance/src/presentation/home/widgets/finance_section_header.dart';
import 'package:finance/src/presentation/payment/amount_suffix_formatter.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

import 'currency_calculator_cubit.dart';
import 'currency_calculator_input.dart';
import 'currency_exchange_button.dart';
import 'currency_selector_chip.dart';

class CurrencyCalculatorWidget extends HookWidget {
  final List<Currency> currencies;

  const CurrencyCalculatorWidget({super.key, required this.currencies});

  @override
  Widget build(BuildContext context) {
    final cubit = useMemoized(CurrencyCalculatorCubit.new, const []);
    final controller = useTextEditingController(text: "1");

    useEffect(() => cubit.close, [cubit]);

    useEffect(() {
      void onAmountChanged() {
        cubit.setValue(controller.text.withOutSpace().toDoubleOrNull() ?? 0);
      }

      onAmountChanged();
      controller.addListener(onAmountChanged);
      return () => controller.removeListener(onAmountChanged);
    }, [controller, cubit]);

    useEffect(() {
      if (currencies.length >= 2) {
        cubit.setFrom(currencies[1]);
        cubit.setTo(currencies.first);
      }
      return null;
    }, [currencies, cubit]);

    void selectCurrency(Currency current, ValueChanged<Currency> onSelected) {
      final completer = Completer<Currency>();
      completer.future.then(onSelected);
      context.pushCurrenciesPageModalPage(
        currencies: currencies,
        completer: completer,
        currentCurrencyId: current.id ?? 0,
      );
    }

    return BlocBuilder<CurrencyCalculatorCubit, CalculatorData>(
      bloc: cubit,
      builder: (context, state) {
        final from = state.from;
        final to = state.to;
        if (from == null || to == null) return const SizedBox();

        return FinanceSectionCard(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FinanceSectionHeader(
                title: context.localization.currency_calculator,
              ),
              SizedBox(
                height: 120,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Column(
                      spacing: 8,
                      children: [
                        CurrencyCalculatorInput(
                          amount: TextFormField(
                            controller: controller,
                            style: CustomTypography.bodyLg,
                            cursorWidth: 1,
                            cursorColor: context.appColors.brand,
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              AmountWithSuffixFormatter(suffix: ""),
                            ],
                            decoration: InputDecoration(
                              isDense: true,
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.zero,
                              hintText: "0",
                              hintStyle: CustomTypography.bodyLg.copyWith(
                                color: context.appColors.textIconColor.tertiary,
                              ),
                            ),
                          ),
                          chip: CurrencySelectorChip(
                            currency: from,
                            onTap: () => selectCurrency(from, cubit.setFrom),
                          ),
                        ),
                        CurrencyCalculatorInput(
                          filled: false,
                          amount: Text(
                            state.result,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTypography.bodyLg,
                          ),
                          chip: CurrencySelectorChip(
                            currency: to,
                            onTap: () => selectCurrency(to, cubit.setTo),
                          ),
                        ),
                      ],
                    ),
                    CurrencyExchangeButton(onTap: cubit.changeFromTo),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
