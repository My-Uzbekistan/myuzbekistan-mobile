part of 'profile_bloc.dart';

@freezed
abstract class ProfileBlocState with _$ProfileBlocState {
  factory ProfileBlocState.dataState({
    UserModel? userModel,
    @Default(false) bool hasPin,
    @Default(false) bool isLoading,
    @Default(false) bool isPremium,
  }) = ProfileBlocDataState;

  factory ProfileBlocState.guestState() = ProfileBlocGuestState;
}
