part of 'check_pin_bloc.dart';

@freezed
abstract class CheckPinCodeState with _$CheckPinCodeState {
  factory CheckPinCodeState.entryState(
    String pinCode, {
    @Default(false) bool canBiometric,
  }) = CheckPinEntryState;

  factory CheckPinCodeState.successState() = CheckPinSuccessState;

  factory CheckPinCodeState.loadingState() = CheckPinLoadingState;

  factory CheckPinCodeState.errorState({String? message}) = CheckPinErrorState;

  factory CheckPinCodeState.reset() = CheckPinResetState;
}

extension CheckPinCodeStateX on CheckPinCodeState {
  CheckPinCodeState removeLast() {
    return when(
      entryState: (pin, canBiometric) {
        if (pin.isEmpty) return this;
        return CheckPinCodeState.entryState(
          pin.substring(0, pin.length - 1),
          canBiometric: canBiometric,
        );
      },
      successState: () => this,
      loadingState: () => this,
      errorState: (message) => this,
      reset: () => this,
    );
  }
}
