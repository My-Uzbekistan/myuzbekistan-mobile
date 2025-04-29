part of 'auth_bloc.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  factory AuthEvent.authByGoogle() = _AuthGoogleEvent;
  factory AuthEvent.authByApple() = _AuthAppleEvent;
  factory AuthEvent.logOutEvent() = _AuthLogOutEvent;
}
