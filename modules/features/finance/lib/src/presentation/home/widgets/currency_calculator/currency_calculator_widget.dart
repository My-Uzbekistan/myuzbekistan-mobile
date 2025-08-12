import 'package:component_res/component_res.dart';
import 'package:finance/src/core/extension.dart';
import 'package:finance/src/presentation/payment/amount_suffix_formatter.dart';
import 'package:finance/src/presentation/widgets/finance_category_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared/shared.dart';

import 'currency_calculator_cubit.dart';

class CurrencyCalculatorWidget extends StatefulWidget {
  final double currentExchangeRate;

  const CurrencyCalculatorWidget({
    super.key,
    required this.currentExchangeRate,
  });

  @override
  State<CurrencyCalculatorWidget> createState() =>
      _CurrencyCalculatorWidgetState();
}

class _CurrencyCalculatorWidgetState extends State<CurrencyCalculatorWidget> {
  late CurrencyCalculatorCubit currencyCalculatorCubit =
      CurrencyCalculatorCubit();
  TextEditingController inputController = TextEditingController(text: "1");
  TextEditingController resultController = TextEditingController();

  @override
  void initState() {
    super.initState();
    listener();
  }

  void listener() {
    inputController.addListener(() {
      currencyCalculatorCubit.setValue(
        inputController.text.withOutSpace().toDoubleOrNull() ?? 0,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final usCurrencyLabel = CurrencyLabel(
      key: ValueKey("usd"),
      flag: Assets.flagsUs,
      code: "USD",
    );
    final uzsCurrencyLabel = CurrencyLabel(
      key: ValueKey("uzs"),
      flag: Assets.flagsUz,
      code: "UZS",
    );

    return BlocProvider(
      create:
          (context) =>
              currencyCalculatorCubit
                ..setCurrentExchangeRate(widget.currentExchangeRate),
      child: BlocBuilder<CurrencyCalculatorCubit, CalculatorData>(
        buildWhen: (previous, current) {
          return previous.result != current.result;
        },

        builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 8,
            children: [
              FinanceCategoryHeader(title: context.localization.currency_calculator),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    spacing: 4,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              alignment: Alignment.centerLeft,
                              child: AnimatedSwitcher(
                                duration: Duration(milliseconds: 200),
                                child:
                                    state.isUsdToUzs
                                        ? usCurrencyLabel
                                        : uzsCurrencyLabel,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              HapticFeedback.mediumImpact();
                              currencyCalculatorCubit.setExchangeType(
                                state.isUsdToUzs
                                    ? CalculatorExchangeType.uzsToUsd
                                    : CalculatorExchangeType.usdToUzs,
                              );
                            },
                            child: Container(
                              height: 40,
                              width: 40,
                              color: Colors.transparent,
                              child: Assets.svgIconArrowRightLeft.toSvgImage(
                                width: 20,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.centerRight,
                              child: AnimatedSwitcher(
                                duration: Duration(milliseconds: 200),
                                child:
                                    state.isUsdToUzs
                                        ? uzsCurrencyLabel
                                        : usCurrencyLabel,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 44,
                        child: Row(
                          spacing: 8,
                          children: [
                            Expanded(
                              child: TextFormField(
                                controller: inputController,
                                style: CustomTypography.bodyMd,
                                cursorWidth: 1,
                                keyboardType: TextInputType.number,
                                cursorColor: context.appColors.brand,
                                inputFormatters: [
                                  AmountWithSuffixFormatter(suffix: ""),
                                ],
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(10),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide(
                                      color: context.appColors.stroke.nonOpaque,
                                      width: 1,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide(
                                      color: context.appColors.stroke.nonOpaque,
                                      width: 1,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: double.maxFinite,
                                alignment: Alignment.centerLeft,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: context.appColors.fill.quaternary,
                                ),
                                child:
                                    Text(
                                      state.result,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ).bodyMd(),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ).shadow(context),
              ),
            ],
          );
        },
      ),
    );
  }
}

class CurrencyLabel extends StatelessWidget {
  final String flag;
  final String code;

  const CurrencyLabel({super.key, required this.flag, required this.code});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4).copyWith(right: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: context.appColors.fill.quaternary,
      ),
      child: Row(
        spacing: 4,
        mainAxisSize: MainAxisSize.min,
        children: [
          flag.toSvgImage(width: 16, fit: BoxFit.fill),
          Text(code).labelSm(),
        ],
      ),
    );
  }
}
