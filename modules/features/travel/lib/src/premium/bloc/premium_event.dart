part  of 'premium_bloc.dart';

@freezed
abstract class PremiumEvent with _$PremiumEvent{

  factory PremiumEvent.fetchStatus() = _PremiumFetchStatus;

}