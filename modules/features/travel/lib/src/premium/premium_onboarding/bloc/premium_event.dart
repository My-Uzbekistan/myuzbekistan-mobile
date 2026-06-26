part  of 'premium_bloc.dart';

@freezed
abstract class PremiumEvent with _$PremiumEvent{

  factory PremiumEvent.plans() = _Plans;
  factory PremiumEvent.selectPlan({required PremiumPlansModel item}) = _SelectPlan;
  factory PremiumEvent.paymentSucceeded() = _PaymentSucceeded;

}