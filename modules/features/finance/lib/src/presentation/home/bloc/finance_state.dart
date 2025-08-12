part of 'finance_bloc.dart';

@freezed
abstract class FinanceState with _$FinanceState {
  factory FinanceState.loadingState() = FinanceLoadingState;

  factory FinanceState.dataState({
    @Default([]) List<Merchant> merchants,
    @Default([]) List<Currency> currencies,
  }) = FinanceDataState;
}
