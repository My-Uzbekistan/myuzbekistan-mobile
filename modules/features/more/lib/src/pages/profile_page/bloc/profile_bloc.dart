import 'dart:async';

import 'package:domain/domain.dart';
import 'package:flutter/foundation.dart';
import 'package:shared/shared.dart';

part 'profile_bloc_state.dart';

part 'profile_bloc_event.dart';

part 'profile_bloc.freezed.dart';

@injectable
class ProfileBloc extends Bloc<ProfileBlocEvent, ProfileBlocState> {
  final SecurityStorage _securityStorage;
  final AppStatusChangeListeners _appStatusChangeListeners;
  StreamSubscription? _streamSubscription;
  StreamSubscription? _refreshProfileSubscription;
  final Repository repository;

  ProfileBloc(
    SecurityStorage securityStorage,
    AppStatusChangeListeners appStatusChangeListeners,
    this.repository,
  ) : _securityStorage = securityStorage,
        _appStatusChangeListeners = appStatusChangeListeners,
      super(ProfileBlocState.guestState()) {
    on<_ProfileBlocInitEvent>((event, emit) {
      _init();
      add(ProfileBlocEvent.loadEvent());
    });
    on<_ProfileBlocLoadEvent>((event, emit) {
      final userModel = _securityStorage.getUserModel();
      if (userModel != null) {
        emit(
          ProfileBlocState.dataState(
            userModel: userModel,
            hasPin: securityStorage.hasPin(),
          ),
        );
      } else {
        emit(ProfileBlocState.guestState());
      }
    });
    on<_ProfileBlocLogOutEvent>((event, emit) async {
      await _securityStorage.clearData();
      GlobalHandler().refreshListener?.call();
    });
    on<_ProfileBlocDeleteEvent>((event, emit) async {
      try {
        await repository.deleteAccount();
      } catch (e) {}
      await _securityStorage.clearData();
      GlobalHandler().refreshListener?.call();
    });
  }

  void _init() {
    _streamSubscription?.cancel();
    _streamSubscription = _appStatusChangeListeners.refreshListener.listen((
      event,
    ) {
      add(ProfileBlocEvent.loadEvent());
    });
    _refreshProfileSubscription?.cancel();
    _refreshProfileSubscription = _appStatusChangeListeners.refreshProfileListener.listen((
      event,
    ) {
      add(ProfileBlocEvent.loadEvent());
    });
  }

  @override
  Future<void> close() {
    _streamSubscription?.cancel();
    _refreshProfileSubscription?.cancel();
    return super.close();
  }
}
