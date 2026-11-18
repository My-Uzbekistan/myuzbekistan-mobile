part of 'contract_detail_bloc.dart';

@freezed
abstract class ContractDetailState with _$ContractDetailState {
  factory ContractDetailState({
    @Default(true) bool isLoading,
    Contract? contract,
    String? errorMessage,
  }) = _ContractDetailState;
}
