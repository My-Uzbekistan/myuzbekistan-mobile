import 'dart:async';

import 'package:core/core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../core/listeners/appsettings_change_listener.dart';

part 'profile_bloc_state.dart';

part 'profile_bloc_event.dart';

part 'profile_bloc.freezed.dart';

@injectable
class ProfileBloc extends Bloc<ProfileBlocEvent, ProfileBlocState> {
  final SecurityStorage _securityStorage;
  final AppStatusChangeListeners _appLocaleChangeListener;
  StreamSubscription? _streamSubscription;

  ProfileBloc(SecurityStorage securityStorage,
      AppStatusChangeListeners appStatusChangeListeners)
      : _securityStorage = securityStorage,
        _appLocaleChangeListener = appStatusChangeListeners,
        super(ProfileBlocState.guestState()) {
    on<_ProfileBlocInitEvent>((event, emit) {
      _init();
      add(ProfileBlocEvent.loadEvent());
    });
    on<_ProfileBlocLoadEvent>((event, emit) {
      final userModel = _securityStorage.getUserModel();
      if (userModel != null) {
        emit(ProfileBlocState.dataState(userModel: userModel));
      }else {
        emit(ProfileBlocState.guestState());
      }
    });
    on<_ProfileBlocLogOutEvent>((event, emit) async {
      await _securityStorage.clearData();
     _appLocaleChangeListener.refresh();
    });
  }

  void _init() {
    _streamSubscription?.cancel();
    _streamSubscription =
        _appLocaleChangeListener.refreshListener.listen((event) {
          debugPrint("refreshEvent 1241241241241}");
      add(ProfileBlocEvent.loadEvent());
    });
  }

  @override
  Future<void> close() {
    _streamSubscription?.cancel();
    return super.close();
  }
}
