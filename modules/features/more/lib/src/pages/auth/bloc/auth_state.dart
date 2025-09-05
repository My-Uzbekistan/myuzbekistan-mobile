part of 'auth_bloc.dart';

@freezed
abstract class AuthState with _$AuthState {

  factory AuthState.defaultState() = DefaultState;
  factory AuthState.googleLoading() = AuthGoogleLoadingState;
  factory AuthState.appleLoading() = AuthAppleLoadingState;
  factory AuthState.authSuccessState({@Default(false) bool hasPin}) = AuthSuccessState;
}
