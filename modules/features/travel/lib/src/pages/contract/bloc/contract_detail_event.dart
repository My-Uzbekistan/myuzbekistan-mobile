part of 'contract_detail_bloc.dart';

@freezed
abstract class ContractDetailEvent with _$ContractDetailEvent {
  factory ContractDetailEvent.load(int id) = _Load;
}
