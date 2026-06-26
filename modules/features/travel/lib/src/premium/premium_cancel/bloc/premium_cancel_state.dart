part of 'premium_cancel_bloc.dart';

@freezed
abstract class PremiumCancelState with _$PremiumCancelState {
  factory PremiumCancelState({
    @Default(true) bool isLoading,
    @Default(false) bool isCancelling,
    @Default(false) bool isCancelled,
    PremiumStatusModel? status,
  }) = _PremiumCancelState;
}
