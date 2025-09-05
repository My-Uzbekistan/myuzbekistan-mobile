import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

class CalculatorData extends Equatable {
  final Currency? from;
  final Currency? to;
  final double value;

  const CalculatorData({this.from, this.to, this.value = 1});

  CalculatorData copyWith({Currency? from, double? value, Currency? to}) {
    return CalculatorData(
      value: value ?? this.value,
      from: from ?? this.from,
      to: to ?? this.to,
    );
  }

  String get result {
    if (from?.rate == null || to?.rate == null) return "";
    final calculated = value * (from!.rateToDouble() / to!.rateToDouble());
    return calculated.amountFormatted(withRemain: true);
  }

  @override
  List<Object?> get props => [from, to, value];
}

enum CalculatorExchangeType { uzsToUsd, usdToUzs }

class CurrencyCalculatorCubit extends Cubit<CalculatorData> {
  CurrencyCalculatorCubit() : super(CalculatorData());

  void changeFromTo() {
    emit(state.copyWith(from: state.to, to: state.from));
  }

  void setFrom(Currency from) {
    emit(state.copyWith(from: from));
  }

  void setTo(Currency to) {
    emit(state.copyWith(to: to));
  }

  void setValue(double value) {
    emit(state.copyWith(value: value));
  }
}
