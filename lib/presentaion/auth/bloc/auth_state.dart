part of 'auth_bloc.dart';

@freezed
abstract class AuthState with _$AuthState {

  factory AuthState.defaultState() = DefaultState;
  factory AuthState.loading() = AuthLoadingState;
  factory AuthState.authSuccessState() = AuthSuccessState;
}
