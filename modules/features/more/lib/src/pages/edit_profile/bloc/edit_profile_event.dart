part of 'edit_profile_bloc.dart';

@freezed
abstract class EditProfileEvent with _$EditProfileEvent {
  factory EditProfileEvent.fetch() = _EditProfileFetch;

  factory EditProfileEvent.save({String? firstName, String? lastName}) =
      _EditProfileSave;

  factory EditProfileEvent.uploadAvatar({required File file}) =
      _EditProfileUploadAvatar;

  factory EditProfileEvent.deleteAvatar() = _EditProfileDeleteAvatar;
}
