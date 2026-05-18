part of 'onboarding_bloc.dart';

@freezed
abstract class OnboardingState with _$OnboardingState {
  factory OnboardingState({List<OnboardingItem>? items}) = _OnboardingState;
}
