
part of 'more_bloc.dart';

@freezed
abstract class MoreEvent with _$MoreEvent {

  factory MoreEvent.init() = _MoreEventInit;
  factory MoreEvent.fetch() = _MoreEventFetch;
  factory MoreEvent.fetchCurrencies() = _MoreEventFetchCurrency;

}