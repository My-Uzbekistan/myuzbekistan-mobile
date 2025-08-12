import 'package:shared/shared.dart';

class CalculatorData extends Equatable {
  final double? currentExchangeRate;
  final double value;
  CalculatorExchangeType type;

  CalculatorData({
    this.currentExchangeRate,
    this.value = 1,
    this.type = CalculatorExchangeType.usdToUzs,
  });

  CalculatorData copyWith({
    double? currentExchangeRate,
    double? value,
    CalculatorExchangeType? type,
  }) {
    return CalculatorData(
      currentExchangeRate: currentExchangeRate ?? this.currentExchangeRate,
      value: value ?? this.value,
      type: type ?? this.type,
    );
  }

  bool get isUsdToUzs => type == CalculatorExchangeType.usdToUzs;

  String get result =>
      ( isUsdToUzs ? currentExchangeRate! * value : value / currentExchangeRate!).amountFormatted(withRemain: !isUsdToUzs);

  @override
  List<Object?> get props => [currentExchangeRate, value, type];
}

enum CalculatorExchangeType { uzsToUsd, usdToUzs }

class CurrencyCalculatorCubit extends Cubit<CalculatorData> {
  CurrencyCalculatorCubit() : super(CalculatorData());

  void setCurrentExchangeRate(double currentRate) {
    emit(state.copyWith(currentExchangeRate: currentRate));
  }

  void setExchangeType(CalculatorExchangeType type) {
    emit(state.copyWith(type: type));
  }

  void setValue(double value) {
    emit(state.copyWith(value: value));
  }
}
