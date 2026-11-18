import 'dart:async';

import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart';

import 'package:travel/src/core/extension.dart';

import '../../../../di/injection.dart';
import '../../home_bloc/calculator_cubit/currency_calculator_cubit.dart';

class CurrencyCalculator extends StatefulWidget {
  const CurrencyCalculator({super.key});

  @override
  State<CurrencyCalculator> createState() => _CurrencyCalculatorState();
}

class _CurrencyCalculatorState extends State<CurrencyCalculator> {
  final CurrencyCalculatorCubit _cubit = getIt<CurrencyCalculatorCubit>()..load();
  final TextEditingController _inputController =
      TextEditingController(text: "1");

  @override
  void initState() {
    super.initState();
    _inputController.addListener(() {
      _cubit.setValue(
        _inputController.text.withOutSpace().toDoubleOrNull() ?? 0,
      );
    });
  }

  @override
  void dispose() {
    _inputController.dispose();
    _cubit.close();
    super.dispose();
  }

  void _pickCurrency(CalculatorData state, {required bool isFrom}) {
    if (state.currencies.isEmpty) return;
    final completer = Completer<Currency>();
    completer.future.then((currency) {
      if (isFrom) {
        _cubit.setFrom(currency);
      } else {
        _cubit.setTo(currency);
      }
    });
    context.pushType(
      AppNavPath.finance.currenciesModalPage,
      extra: Triple(
        state.currencies,
        completer,
        (isFrom ? state.from?.id : state.to?.id) ?? 0,
      ),
      queryParameters: {"isModal": "true"},
    );
  }

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 12),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: context.appColors.background.elevation1,
        ),
        child: BlocProvider.value(
          value: _cubit,
          child: BlocBuilder<CurrencyCalculatorCubit, CalculatorData>(
            builder: (context, state) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(context.localization.home_currency_calculator).h3(),
                  const SizedBox(height: 16),
                  Stack(
                    alignment: Alignment.center,
                    clipBehavior: Clip.none,
                    children: [
                      Column(
                        children: [
                          _CalculatorRow(
                            filled: true,
                            currency: state.from,
                            onCurrencyTap: () =>
                                _pickCurrency(state, isFrom: true),
                            child: TextField(
                              controller: _inputController,
                              style: CustomTypography.bodyLg.copyWith(
                                color: context.appColors.textIconColor.primary,
                              ),
                              cursorWidth: 1,
                              cursorColor: context.appColors.brand,
                              keyboardType: TextInputType.number,
                              inputFormatters: [_ThousandsFormatter()],
                              decoration: const InputDecoration(
                                isCollapsed: true,
                                border: InputBorder.none,
                                hintText: "0",
                              ),
                            ),
                          ),
                          const SizedBox(height: 8),
                          _CalculatorRow(
                            filled: false,
                            currency: state.to,
                            onCurrencyTap: () =>
                                _pickCurrency(state, isFrom: false),
                            child: Text(
                              state.result,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ).bodyLg(
                              color: context.appColors.textIconColor.primary,
                            ),
                          ),
                        ],
                      ),
                      _ExchangeButton(
                        onTap: () {
                          HapticFeedback.mediumImpact();
                          _cubit.changeFromTo();
                        },
                      ),
                    ],
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

class _CalculatorRow extends StatelessWidget {
  final bool filled;
  final Currency? currency;
  final Widget child;
  final VoidCallback onCurrencyTap;

  const _CalculatorRow({
    required this.filled,
    required this.currency,
    required this.child,
    required this.onCurrencyTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: filled
            ? context.appColors.fill.quaternary
            : context.appColors.background.elevation1,
        border: filled
            ? null
            : Border.all(color: context.appColors.stroke.nonOpaque),
      ),
      child: Row(
        children: [
          Expanded(child: child),
          const SizedBox(width: 8),
          _CurrencySelector(currency: currency, onTap: onCurrencyTap),
        ],
      ),
    );
  }
}

class _CurrencySelector extends StatelessWidget {
  final Currency? currency;
  final VoidCallback onTap;

  const _CurrencySelector({required this.currency, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _CurrencyFlag(url: currency?.flag ?? "", size: 28),
          const SizedBox(width: 6),
          Text(currency?.ccy ?? "").labelLg(),
          const SizedBox(width: 6),
          Icon(
            Icons.keyboard_arrow_down_rounded,
            size: 16,
            color: context.appColors.textIconColor.secondary,
          ),
        ],
      ),
    );
  }
}

class _CurrencyFlag extends StatelessWidget {
  final String url;
  final double size;

  const _CurrencyFlag({required this.url, required this.size});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: SizedBox(
        width: size,
        height: size,
        child: AppNetworkImage(
          url,
          fit: BoxFit.cover,
          placeholder: ColoredBox(color: context.appColors.fill.quaternary),
        ),
      ),
    );
  }
}

class _ExchangeButton extends StatelessWidget {
  final VoidCallback onTap;

  const _ExchangeButton({required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: Container(
        width: 36,
        height: 36,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: context.appColors.colors.green,
          border: Border.all(
            color: context.appColors.background.elevation1,
            width: 3,
          ),
        ),
        alignment: Alignment.center,
        child: SizedBox(
          width: 20,
          height: 20,
          child: Assets.svg.iconArrowRightLeft.path.toSvgImage(
            width: 20,
            colorFilter: ColorFilter.mode(
              context.appColors.static.white,
              BlendMode.srcIn,
            ),
          ),
        ),
      ),
    );
  }
}

class _ThousandsFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    final digitsOnly = newValue.text.replaceAll(RegExp(r'\D'), '');
    final oldDigits = oldValue.text.replaceAll(RegExp(r'\D'), '');
    if (digitsOnly == oldDigits) {
      return oldValue.copyWith(selection: newValue.selection);
    }
    if (digitsOnly.isEmpty) {
      return const TextEditingValue(
        text: '',
        selection: TextSelection.collapsed(offset: 0),
      );
    }
    final formatted = digitsOnly.toDouble().amountFormatted();
    final offsetFromRight = oldValue.text.length - oldValue.selection.end;
    var newOffset = formatted.length - offsetFromRight;
    if (newOffset > formatted.length) newOffset = formatted.length;
    if (newOffset < 0) newOffset = 0;
    return TextEditingValue(
      text: formatted,
      selection: TextSelection.collapsed(offset: newOffset),
    );
  }
}
