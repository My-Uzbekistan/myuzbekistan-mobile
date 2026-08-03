import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'currency_calculator_cubit.freezed.dart';

part 'currency_calculator_state.dart';

/// Molya (Finance) bo'limidagi kalkulyator logikasi bilan bir xil.
@injectable
class CurrencyCalculatorCubit extends Cubit<CalculatorData> {
  final CurrenciesUseCase _currenciesUseCase;

  CurrencyCalculatorCubit(this._currenciesUseCase)
      : super(const CalculatorData());

  Future<void> load() async {
    try {
      final loaded = await _currenciesUseCase();
      final list = <Currency>[
        Currency(ccy: "UZS", rate: "1", id: -11),
        ...loaded.filterCurrencies(),
      ];
      if (list.length >= 2) {
        emit(state.copyWith(currencies: list, from: list[1], to: list.first));
      } else {
        emit(state.copyWith(currencies: list));
      }
    } catch (e) {
      logger.e("CurrencyCalculatorCubit load error: $e");
    }
  }

  void changeFromTo() {
    emit(state.copyWith(from: state.to, to: state.from));
  }

  void setFrom(Currency from) => emit(state.copyWith(from: from));

  void setTo(Currency to) => emit(state.copyWith(to: to));

  void setValue(double value) => emit(state.copyWith(value: value));
}
