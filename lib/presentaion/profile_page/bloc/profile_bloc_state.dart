part of 'profile_bloc.dart';

@freezed
abstract class ProfileBlocState with _$ProfileBlocState {
  factory ProfileBlocState.dataState({UserModel? userModel}) = ProfileBlocDataState;
  factory ProfileBlocState.guestState() = ProfileBlocGuestState;
}
