import 'package:domain/domain.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared/shared.dart';

part 'onboarding_state.dart';

part 'onboarding_event.dart';

part 'onboarding_bloc.freezed.dart';

@injectable
class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  final Repository _repository;

  final Set<int> trackedViewIdes = {};
  final Set<int> trackedClickIdes = {};

  OnboardingBloc(this._repository) : super(OnboardingState()) {
    on<_OnboardingLoadDataEvent>(_loadOnboardingItems);
    on<_OnboardingTrackViewEvent>(_trackView);
    on<_OnboardingTrackClicEvent>(_trackClick);
    on<_OnboardingClearEvent>(_clearEvent);
  }

  Future<void> _loadOnboardingItems(
    _OnboardingLoadDataEvent event,
    Emitter<OnboardingState> emit,
  ) async {
    try {
      final onboardings = await _repository.getActiveOnboardings();
      emit(state.copyWith(items: onboardings));
    } catch (_) {}
  }

  void _trackView(
    _OnboardingTrackViewEvent event,
    Emitter<OnboardingState> emit,
  ) {
    try {
      final item = state.items![event.index];
      if (!trackedViewIdes.contains(item.id)) {
        trackedViewIdes.add(item.id);
        _repository.onboardingTrackView(id: item.id);
      }
    } catch (_) {}
  }

  void _trackClick(
      _OnboardingTrackClicEvent event,
      Emitter<OnboardingState> emit,
      ) {
    try {
      final item = state.items![event.index];
      if (!trackedClickIdes.contains(item.id)) {
        trackedClickIdes.add(item.id);
        _repository.onboardingTrackClick(id: item.id);
      }
    } catch (_) {}
  }

  void _clearEvent(
    _OnboardingClearEvent event,
    Emitter<OnboardingState> emit,
  ){
    trackedViewIdes.clear();
    trackedClickIdes.clear();
    emit(OnboardingState());
  }
}
