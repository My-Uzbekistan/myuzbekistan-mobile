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
  var dataState = MoreState.dataState() as MoreDataState;

  MoreBloc(
      {required Repository rp,
      required AppStatusChangeListeners appStatusChangeListeners})
      : _repository = rp,
        _appStatusChangeListeners = appStatusChangeListeners,
        super(MoreState.loading()) {
    on<_MoreEventInit>(_init);
    on<_MoreEventFetchCurrency>(_fetchLoadCurrency);
    on<_MoreEventFetch>(_fetchData);
  }

  StreamSubscription? _streamSubscription;

  void _init(_MoreEventInit event, Emitter<MoreState> emit) {
    _streamSubscription?.cancel();
    add(MoreEvent.fetch());
    add(MoreEvent.fetchCurrencies());
    _streamSubscription =
        _appStatusChangeListeners.refreshListener.listen((data) {
      add(MoreEvent.fetch());
    });
  }

  Future<void> _fetchData(
      _MoreEventFetch event, Emitter<MoreState> emit) async {
    emit(MoreState.loading());
    try {
      final result = await Future.wait(
          [_repository.loadAbout(), _repository.loadMoreUseFull()]);
      dataState = dataState.copyWith(abouts: result[0], useFull: result[1]);
      emit(dataState);
    } catch (e) {}
  }

  Future<void> _fetchLoadCurrency(
      _MoreEventFetchCurrency event, Emitter<MoreState> emit) async {
    try {
      final result = await _repository.loadCurrencies();
      dataState = dataState.copyWith(currencies: result);
      if (state is MoreDataState) {
        emit(dataState);
      }
    } catch (e) {}
  }

  @override
  Future<void> close() {
    _streamSubscription?.cancel();
    return super.close();
  }
}
