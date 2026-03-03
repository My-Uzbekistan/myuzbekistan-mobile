part of 'auth_phone_bloc.dart';

@freezed
abstract class AuthPhoneState with _$AuthPhoneState {
  const AuthPhoneState._();
  const factory AuthPhoneState({
    @Default("") String phoneNumber,
    @Default(false) isLoading,
  }) = _AuthPhoneState;

  bool get isPhoneNumberValid => phoneNumber.length == 9;
}
