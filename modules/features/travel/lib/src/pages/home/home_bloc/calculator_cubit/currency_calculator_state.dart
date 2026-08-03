part of 'currency_calculator_cubit.dart';

@freezed
abstract class CalculatorData with _$CalculatorData {
  const CalculatorData._();

  const factory CalculatorData({
    @Default(<Currency>[]) List<Currency> currencies,
    Currency? from,
    Currency? to,
    @Default(1.0) double value,
  }) = _CalculatorData;

  String get result {
    if (from?.rate == null || to?.rate == null) return "";
    final calculated = value * (from!.rateToDouble() / to!.rateToDouble());
    return calculated.amountFormatted(withRemain: true);
  }
}
