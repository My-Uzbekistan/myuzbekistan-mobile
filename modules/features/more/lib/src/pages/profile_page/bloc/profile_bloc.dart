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
  final PremiumRepository _premiumRepository;
  StreamSubscription? _streamSubscription;
  StreamSubscription? _refreshProfileSubscription;
  final Repository repository;
  final AppRefreshListener _refresh;
  StreamSubscription<AppRefreshTopic>? _premiumSubscription;

  ProfileBloc(
    SecurityStorage securityStorage,
    AppStatusChangeListeners appStatusChangeListeners,
    this.repository,
    PremiumRepository premiumRepository,
    AppRefreshListener refresh,
  ) : _securityStorage = securityStorage,
      _refresh = refresh,
      _appStatusChangeListeners = appStatusChangeListeners,
      _premiumRepository = premiumRepository,
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
        add(ProfileBlocEvent.syncPremium());
      } else {
        emit(ProfileBlocState.guestState());
      }
    });
    on<_ProfileBlocLogOutEvent>((event, emit) async {
      await _endServerSession();
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
    on<_ProfileBlocSyncPremiumEvent>(_onSyncPremium);
  }

  Future<void> _endServerSession() async {
    try {
      await repository.logout().timeout(const Duration(seconds: 3));
    } catch (_) {}
  }

  Future<void> _onSyncAvatar(
    _ProfileBlocSyncAvatarEvent event,
    Emitter<ProfileBlocState> emit,
  ) async {
    if (state is! ProfileBlocDataState) return;

    try {
      // Avatar saqlanmaydi — har safar user-info dan jonli o'qiladi.
      // Premium tugaganda profilePictureUrl `null` keladi va avatar tozalanadi.
      final info = await repository.getUserInfo();
      final base = _securityStorage.getUserModel();
      final current = state;
      if (current is! ProfileBlocDataState) return;
      emit(
        current.copyWith(userModel: base?.withPhotoUrl(info.profilePictureUrl)),
      );
    } catch (_) {
      // Offline yoki xato — joriy holat o'zgarmaydi.
    }
  }

  Future<void> _onSyncPremium(
    _ProfileBlocSyncPremiumEvent event,
    Emitter<ProfileBlocState> emit,
  ) async {
    if (state is! ProfileBlocDataState) return;

    try {
      final status = await _premiumRepository.status();
      final current = state;
      if (current is! ProfileBlocDataState) return;
      emit(current.copyWith(isPremium: status.isPremium));
    } catch (_) {}
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

      // Saqlanmaydi — yangi URL faqat state ga qo'yiladi.
      final base = _securityStorage.getUserModel();
      emit(
        current.copyWith(
          userModel: base?.withPhotoUrl(pictureUrl),
          isLoading: false,
        ),
      );
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
    _premiumSubscription?.cancel();
    _premiumSubscription = _refresh
        .observe({AppRefreshTopic.premium})
        .listen((_) => add(ProfileBlocEvent.syncPremium()));
  }

  @override
  Future<void> close() {
    _streamSubscription?.cancel();
    _refreshProfileSubscription?.cancel();
    _premiumSubscription?.cancel();
    return super.close();
  }
}
