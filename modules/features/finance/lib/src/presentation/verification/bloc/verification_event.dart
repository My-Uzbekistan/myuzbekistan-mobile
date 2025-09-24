part of 'verification_bloc.dart';

@freezed
abstract class VerificationEvent with _$VerificationEvent {
  const factory VerificationEvent.setCodeEvent(String code) =
      _VerificationSetCodeEvent;

  const factory VerificationEvent.setCardCardId(String cardId) =
      _VerificationSetCardIdEvent;

  const factory VerificationEvent.resendEvent() = _VerificationResendEvent;

  const factory VerificationEvent.verify() = _VerificationVerifyEvent;

  const factory VerificationEvent.updateTimer(
    String timer, {
    @Default(false) bool isRetry,
  }) = _VerificationUpdateTimerEvent;
}
