import 'dart:async';

import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shared/shared.dart';

part 'more_event.dart';

part 'more_state.dart';

part 'more_bloc.freezed.dart';

@injectable
class MoreBloc extends Bloc<MoreEvent, MoreState> {
  final Repository _repository;
  final AppStatusChangeListeners _appStatusChangeListeners;
  final SecurityStorage _securityStorage;
  final PremiumRepository _premiumRepository;

  MoreBloc(
    this._securityStorage, {
    required Repository rp,
    required AppStatusChangeListeners appStatusChangeListeners,
    required PremiumRepository premiumRepository,
  }) : _repository = rp,
       _appStatusChangeListeners = appStatusChangeListeners,
       _premiumRepository = premiumRepository,
       super(
         MoreState(
           prayerWidgetChecked: _securityStorage.isShowPrayerTimes(),
           notificationsEnabled: _securityStorage.isNotificationsEnabled(),
         ),
       ) {
    on<_MoreEventFetch>(_fetchData);
    on<_MoreCheckedPrayerWidget>(_checkedPrayerWidget);
    on<_MoreCheckedNotification>(_checkedNotification);
    _init();
  }

  StreamSubscription? _streamSubscription;

  Future<void> _checkedPrayerWidget(
    _MoreCheckedPrayerWidget event,
    Emitter<MoreState> emit,
  ) async {
    final previousChecked = state.prayerWidgetChecked;
    emit(state.copyWith(prayerWidgetChecked: !previousChecked));
    await _securityStorage.changePrayerTimesState(!previousChecked);
    _appStatusChangeListeners.prayersChange(!previousChecked);
  }

  Future<void> _checkedNotification(
    _MoreCheckedNotification event,
    Emitter<MoreState> emit,
  ) async {
    final enabled = !state.notificationsEnabled;
    emit(state.copyWith(notificationsEnabled: enabled, errorMessage: null));
    await _applyNotificationsState(enabled);

    if (_securityStorage.getAccessToken() == null) return;

    try {
      await _repository.updateNotificationSettings(pushEnabled: enabled);
    } catch (e) {
      emit(
        state.copyWith(
          notificationsEnabled: !enabled,
          errorMessage: e.toString(),
        ),
      );
      await _applyNotificationsState(!enabled);
    }
  }

  Future<void> _applyNotificationsState(bool enabled) async {
    await _securityStorage.changeNotificationsState(enabled);
    if (enabled) {
      await NotificationService().subscribeToTopic();
    } else {
      await NotificationService().unsubscribeFromTopic();
    }
  }

  void _init() {
    _streamSubscription?.cancel();

    add(MoreEvent.fetch());

    _streamSubscription = _appStatusChangeListeners.refreshListener.listen((
      data,
    ) {
      add(MoreEvent.fetch());
    });
  }

  Future<void> _fetchData(
    _MoreEventFetch event,
    Emitter<MoreState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    try {
      final result = await Future.wait([
        _repository.loadAbout(),
        _repository.loadMoreUseFull(),
      ]);
      emit(
        state.copyWith(isLoading: false, abouts: result[0], useFull: result[1]),
      );
    } catch (e) {
      emit(state.copyWith(isLoading: false));
    }
    await _loadPremiumStatus(emit);
    await _loadNotificationSettings(emit);
  }

  Future<void> _loadNotificationSettings(Emitter<MoreState> emit) async {
    if (_securityStorage.getAccessToken() == null) return;
    try {
      final userInfo = await _repository.getUserInfo();
      final pushEnabled = userInfo.pushEnabled;
      if (pushEnabled == null) return;
      emit(state.copyWith(notificationsEnabled: pushEnabled));
      if (pushEnabled != _securityStorage.isNotificationsEnabled()) {
        await _applyNotificationsState(pushEnabled);
      }
    } catch (_) {}
  }

  Future<void> _loadPremiumStatus(Emitter<MoreState> emit) async {
    // Mehmon (login qilmagan) bo'lsa — premium so'rovi yuborilmaydi.
    if (_securityStorage.getAccessToken() == null) {
      emit(state.copyWith(premiumStatus: null, premiumLoaded: false));
      return;
    }
    try {
      final premiumStatus = await _premiumRepository.status();
      emit(state.copyWith(premiumStatus: premiumStatus, premiumLoaded: true));
    } catch (_) {
      emit(state.copyWith(premiumLoaded: true));
    }
  }

  @override
  Future<void> close() {
    _streamSubscription?.cancel();
    return super.close();
  }
}
