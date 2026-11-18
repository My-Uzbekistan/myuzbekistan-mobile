part of 'premium_bloc.dart';

@freezed
abstract class PremiumState with _$PremiumState {
  factory PremiumState({
    @Default(true) bool isLoading,
    @Default([]) List<PremiumPlansModel> plans,
    PremiumPlansModel? item,
    PremiumStatusModel? status,
  }) = _PremiumState;
}
