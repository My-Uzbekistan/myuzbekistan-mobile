import 'dart:async';

import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:finance/src/core/extension.dart';
import 'package:finance/src/navigation/navigation_extensions.dart';
import 'package:finance/src/presentation/payment/amount_suffix_formatter.dart';
import 'package:finance/src/presentation/widgets/finance_category_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared/shared.dart';

import 'currency_calculator_cubit.dart';

class CurrencyCalculatorWidget extends StatefulWidget {
  final List<Currency> currencies;

  const CurrencyCalculatorWidget({super.key, required this.currencies});

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
    if (widget.currencies.length >= 2) {
      currencyCalculatorCubit.setFrom(widget.currencies[1]);
      currencyCalculatorCubit.setTo(widget.currencies.first);
    }
    listener();
  }

  void listener() {
    inputController.addListener(() {
      currencyCalculatorCubit.setValue(
        inputController.text.withOutSpace().toDoubleOrNull() ?? 0,
      );
    });
  }

  Completer<Currency>? selectCompleter;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => currencyCalculatorCubit,
      child: BlocBuilder<CurrencyCalculatorCubit, CalculatorData>(
        builder: (context, state) {
          if (state.from != null && state.to != null) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 8,
              children: [
                FinanceCategoryHeader(
                  title: context.localization.currency_calculator,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16,
                    ).copyWith(bottom: 16, top: 11),
                    child: Column(
                      spacing: 5,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                alignment: Alignment.centerLeft,
                                child: AnimatedSwitcher(
                                  duration: Duration(milliseconds: 200),
                                  child: Container(
                                    key: ValueKey("${state.from?.ccy}"),
                                    child: AppChips.appChipsLeftRightIcon(
                                      text: "${state.from!.ccy}",
                                      backgroundColor:
                                          context.appColors.fill.tertiary,
                                      contentColor:
                                          context
                                              .appColors
                                              .textIconColor
                                              .primary,
                                      leftIcon: ExtendedImage.network(
                                        state.from?.flag ?? "",
                                        loadStateChanged: (
                                          ExtendedImageState state,
                                        ) {
                                          switch (state
                                              .extendedImageLoadState) {
                                            case LoadState.completed:
                                              return AnimatedOpacity(
                                                opacity: 1.0,
                                                duration: Duration(
                                                  milliseconds: 200,
                                                ),
                                                child: state.completedWidget,
                                              ); // ✅ Default image o'zi ko'rsatiladi
                                            default:
                                              return SizedBox();
                                          }
                                        },
                                      ),
                                      onTap: () {
                                        selectCompleter = Completer<Currency>();
                                        selectCompleter?.future.then((
                                          currency,
                                        ) {
                                          currencyCalculatorCubit.setFrom(
                                            currency,
                                          );
                                        });
                                        context.pushCurrenciesPageModalPage(
                                          currencies: widget.currencies,
                                          completer: selectCompleter!,
                                          currentCurrencyId:
                                              state.from?.id ?? 0,
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              behavior: HitTestBehavior.translucent,
                              onTap: () {
                                HapticFeedback.mediumImpact();
                                currencyCalculatorCubit.changeFromTo();
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: SizedBox(
                                  height: 20,
                                  width: 20,
                                  child: Assets.svgIconArrowRightLeft
                                      .toSvgImage(
                                        width: 20,
                                        colorFilter: ColorFilter.mode(
                                          context
                                              .appColors
                                              .textIconColor
                                              .primary,
                                          BlendMode.srcIn,
                                        ),
                                      ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                alignment: Alignment.centerRight,
                                child: AnimatedSwitcher(
                                  duration: Duration(milliseconds: 200),
                                  child: Container(
                                    key: ValueKey("${state.to?.ccy}"),

                                    child: AppChips.appChipsLeftRightIcon(
                                      text: "${state.to!.ccy}",
                                      backgroundColor:
                                          context.appColors.fill.tertiary,
                                      contentColor:
                                          context
                                              .appColors
                                              .textIconColor
                                              .primary,
                                      leftIcon: ExtendedImage.network(
                                        state.to?.flag ?? "",
                                        loadStateChanged: (
                                          ExtendedImageState state,
                                        ) {
                                          switch (state
                                              .extendedImageLoadState) {
                                            case LoadState.completed:
                                              return AnimatedOpacity(
                                                opacity: 1.0,
                                                duration: Duration(
                                                  milliseconds: 200,
                                                ),
                                                child: state.completedWidget,
                                              ); // ✅ Default image o'zi ko'rsatiladi
                                            default:
                                              return SizedBox();
                                          }
                                        },
                                      ),
                                      onTap: () {
                                        selectCompleter = Completer<Currency>();
                                        selectCompleter?.future.then((
                                          currency,
                                        ) {
                                          currencyCalculatorCubit.setTo(
                                            currency,
                                          );
                                        });
                                        context.pushCurrenciesPageModalPage(
                                          currencies: widget.currencies,
                                          completer: selectCompleter!,
                                          currentCurrencyId: state.to?.id ?? 0,
                                        );
                                      },
                                    ),
                                  ),
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
                                    filled: true,
                                    fillColor:
                                        context.appColors.fill.quaternary,
                                    contentPadding: EdgeInsets.symmetric(
                                      horizontal: 16,
                                      vertical: 12,
                                    ),
                                    hintText: "0",
                                    hintStyle: CustomTypography.bodyMd.copyWith(
                                      color:
                                          context
                                              .appColors
                                              .textIconColor
                                              .tertiary,
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: BorderSide.none,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: BorderSide.none,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  height: double.maxFinite,
                                  alignment: Alignment.centerLeft,
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 16,
                                    vertical: 12,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                      color: context.appColors.stroke.nonOpaque,
                                    ),
                                  ),
                                  child: Text(
                                    state.result,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ).bodyMd(
                                    color:
                                        context
                                            .appColors
                                            .textIconColor
                                            .secondary,
                                  ),
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
          }

          return SizedBox();
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
