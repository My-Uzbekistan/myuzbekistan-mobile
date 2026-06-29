import 'dart:async';
import 'dart:io';

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
        // Lokal kesh darhol ko'rsatildi; avatarni user-info bilan sinxronlaymiz.
        add(ProfileBlocEvent.syncAvatar());
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
    on<_ProfileBlocUploadAvatarEvent>(_onUploadAvatar);
    on<_ProfileBlocSyncAvatarEvent>(_onSyncAvatar);
  }

  Future<void> _onSyncAvatar(
    _ProfileBlocSyncAvatarEvent event,
    Emitter<ProfileBlocState> emit,
  ) async {
    final current = state;
    if (current is! ProfileBlocDataState) return;

    try {
      final info = await repository.getUserInfo();
      if (info.profilePictureUrl == _securityStorage.getProfilePicture()) {
        return;
      }

      await _securityStorage.saveProfilePicture(info.profilePictureUrl);
      emit(current.copyWith(userModel: _securityStorage.getUserModel()));
    } catch (_) {
      // Offline yoki xato — lokal kesh saqlanadi.
    }
  }

  Future<void> _onUploadAvatar(
    _ProfileBlocUploadAvatarEvent event,
    Emitter<ProfileBlocState> emit,
  ) async {
    final current = state;
    if (current is! ProfileBlocDataState) return;

    emit(current.copyWith(isLoading: true));

    try {
      final uploadedUrl = await repository.uploadProfilePicture(
        file: event.file,
      );
      UserInfoModel? info;
      try {
        info = await repository.getUserInfo();
      } catch (_) {
        info = null;
      }
      final pictureUrl = info?.profilePictureUrl ?? uploadedUrl;

      await _securityStorage.saveProfilePicture(pictureUrl);

      emit(
        current.copyWith(
          userModel: _securityStorage.getUserModel(),
          isLoading: false,
        ),
      );
      _appStatusChangeListeners.refreshProfile();
    } catch (_) {
      emit(current.copyWith(isLoading: false));
    }
  }

  void _init() {
    _streamSubscription?.cancel();
    _streamSubscription = _appStatusChangeListeners.refreshListener.listen((
      event,
    ) {
      add(ProfileBlocEvent.loadEvent());
    });
    _refreshProfileSubscription?.cancel();
    _refreshProfileSubscription = _appStatusChangeListeners
        .refreshProfileListener
        .listen((event) {
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
