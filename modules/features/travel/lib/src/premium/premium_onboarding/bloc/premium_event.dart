part  of 'premium_bloc.dart';

@freezed
abstract class PremiumEvent with _$PremiumEvent{

  factory PremiumEvent.plans() = _Plans;
  factory PremiumEvent.status() = _Status;
  factory PremiumEvent.selectPlan({required PremiumPlansModel item}) = _SelectPlan;

}