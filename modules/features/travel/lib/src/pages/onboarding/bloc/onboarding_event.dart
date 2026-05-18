part of 'onboarding_bloc.dart';

@freezed
abstract class OnboardingEvent with _$OnboardingEvent {
  factory OnboardingEvent.loadData() = _OnboardingLoadDataEvent;
  factory OnboardingEvent.trackView({required int index}) = _OnboardingTrackViewEvent;
  factory OnboardingEvent.trackClick({required int index}) = _OnboardingTrackClicEvent;
  factory OnboardingEvent.clearDataEvent() = _OnboardingClearEvent;
}
