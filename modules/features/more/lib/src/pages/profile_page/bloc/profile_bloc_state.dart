part of 'profile_bloc.dart';

@freezed
abstract class ProfileBlocState with _$ProfileBlocState {
  factory ProfileBlocState.dataState({
    UserModel? userModel,
    @Default(false) bool hasPin,
  }) = ProfileBlocDataState;

  factory ProfileBlocState.guestState() = ProfileBlocGuestState;
}
