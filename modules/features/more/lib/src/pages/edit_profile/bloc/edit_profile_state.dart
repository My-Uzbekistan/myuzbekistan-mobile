part of 'edit_profile_bloc.dart';

@freezed
abstract class EditProfileState with _$EditProfileState {
  const EditProfileState._();

  const factory EditProfileState({
    UserProfile? profile,
    @Default(false) bool isLoading,
    @Default(false) bool isSaving,
    @Default(false) bool isAvatarLoading,
    @Default(false) bool isSaved,
    String? errorMessage,
  }) = _EditProfileState;

  bool get hasAvatar => (profile?.avatar ?? "").isNotEmpty;
}
