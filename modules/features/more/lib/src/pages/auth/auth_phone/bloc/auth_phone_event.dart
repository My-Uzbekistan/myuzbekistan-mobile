part of 'auth_phone_bloc.dart';

@freezed
abstract class AuthPhoneEvent with _$AuthPhoneEvent {
  const factory AuthPhoneEvent.setPhone({@Default("") String phoneNumber}) =
      _AuthPhoneSetEvent;

  const factory AuthPhoneEvent.sendEvent() =
  _AuthPhoneSendEvent;
}
