part of 'verification_bloc.dart';

@freezed
abstract class VerificationState with _$VerificationState {
  const VerificationState._();

  const factory VerificationState({
    @Default("") String code,
    @Default("") String cardId,
    @Default(false) bool isLoading,
    @Default(false) bool isRetry,
    @Default("") String timer,
    @Default(false) bool hasError,
    VerificationNavState? navState,
  }) = _VerificationState;

  bool get isValidate => code.length == 6;
}


@freezed
abstract class VerificationNavState with _$VerificationNavState {

  const factory VerificationNavState.complete() = VerificationNavStateComplete;
}
