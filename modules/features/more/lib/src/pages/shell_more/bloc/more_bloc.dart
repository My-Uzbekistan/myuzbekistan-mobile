import 'dart:async';

import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'more_event.dart';

part 'more_state.dart';

part 'more_bloc.freezed.dart';

@injectable
class MoreBloc extends Bloc<MoreEvent, MoreState> {
  final Repository _repository;
  final AppStatusChangeListeners _appStatusChangeListeners;
  final SecurityStorage _securityStorage;

  MoreBloc(
    this._securityStorage, {
    required Repository rp,
    required AppStatusChangeListeners appStatusChangeListeners,
  }) : _repository = rp,
       _appStatusChangeListeners = appStatusChangeListeners,
       super(
         MoreState(prayerWidgetChecked: _securityStorage.isShowPrayerTimes()),
       ) {
    on<_MoreEventFetch>(_fetchData);
    on<_MoreCheckedPrayerWidget>(_checkedPrayerWidget);
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
  }

  @override
  Future<void> close() {
    _streamSubscription?.cancel();
    return super.close();
  }
}
