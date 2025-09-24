part of 'finance_bloc.dart';

@freezed
abstract class FinanceEvent with _$FinanceEvent {

  factory  FinanceEvent.initialEvent() = _FinanceInitialEvent;
}
