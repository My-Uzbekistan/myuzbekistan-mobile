import 'dart:io';

import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'edit_profile_event.dart';
part 'edit_profile_state.dart';
part 'edit_profile_bloc.freezed.dart';

@injectable
class EditProfileBloc extends Bloc<EditProfileEvent, EditProfileState> {
  final Repository _repository;
  final AppStatusChangeListeners _listeners;

  EditProfileBloc(this._repository, this._listeners)
    : super(const EditProfileState()) {
    on<_EditProfileFetch>(_fetch);
    on<_EditProfileSave>(_save);
    on<_EditProfileUploadAvatar>(_uploadAvatar);
    on<_EditProfileDeleteAvatar>(_deleteAvatar);
  }

  Future<void> _fetch(
    _EditProfileFetch event,
    Emitter<EditProfileState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    try {
      final profile = await _repository.getProfile();
      emit(state.copyWith(profile: profile));
    } catch (e) {
      emit(state.copyWith(errorMessage: e.toString()));
    }
    emit(state.copyWith(isLoading: false));
  }

  Future<void> _save(
    _EditProfileSave event,
    Emitter<EditProfileState> emit,
  ) async {
    emit(state.copyWith(isSaving: true, errorMessage: null, isSaved: false));
    try {
      final profile = await _repository.saveProfile(
        firstName: event.firstName,
        lastName: event.lastName,
      );
      emit(state.copyWith(profile: profile, isSaved: true));
      _listeners.refreshProfile();
    } catch (e) {
      emit(state.copyWith(errorMessage: e.toString()));
    }
    emit(state.copyWith(isSaving: false));
  }

  Future<void> _uploadAvatar(
    _EditProfileUploadAvatar event,
    Emitter<EditProfileState> emit,
  ) async {
    emit(state.copyWith(isAvatarLoading: true, errorMessage: null));
    try {
      final url = await _repository.uploadProfilePicture(file: event.file);
      emit(state.copyWith(profile: state.profile?.withAvatar(url)));
      _listeners.refreshProfile();
    } catch (e) {
      emit(state.copyWith(errorMessage: e.toString()));
    }
    emit(state.copyWith(isAvatarLoading: false));
  }

  Future<void> _deleteAvatar(
    _EditProfileDeleteAvatar event,
    Emitter<EditProfileState> emit,
  ) async {
    emit(state.copyWith(isAvatarLoading: true, errorMessage: null));
    try {
      final profile = await _repository.deleteProfilePicture();
      emit(state.copyWith(profile: profile));
      _listeners.refreshProfile();
    } catch (e) {
      emit(state.copyWith(errorMessage: e.toString()));
    }
    emit(state.copyWith(isAvatarLoading: false));
  }
}
