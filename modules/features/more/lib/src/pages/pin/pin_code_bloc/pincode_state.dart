part of 'pincode_bloc.dart';

@freezed
abstract class PinCodeState with _$PinCodeState {
  factory PinCodeState.entryState(String pinCode) = PinEntryState;

  factory PinCodeState.confirmState({
    @Default("") String pinCode,
    @Default("") String confirmPinCode,
    @Default(false) bool hasError,
  }) = PinConfirmState;

  factory PinCodeState.successState() = PinSuccessState;

  factory PinCodeState.loadingState() = PinLoadingState;

  factory PinCodeState.removedState() = PinRemovedState;

  factory PinCodeState.errorState({String? message}) = PinErrorState;

  // factory PinCodeState.errorState() = PinErrorState;
}

extension PinStateX on PinCodeState {
  PinCodeState removeLast() {
    return when(
      entryState: (pin) {
        if (pin.isEmpty) return this;
        return PinCodeState.entryState(pin.substring(0, pin.length - 1));
      },
      confirmState: (pin, confirmPin, haseError) {
        if (confirmPin.isEmpty) return this;
        return PinCodeState.confirmState(
          pinCode: pin,
          confirmPinCode: confirmPin.substring(0, pin.length - 1),
          hasError: haseError,
        );
      },
      successState: () => this,
      loadingState: () => this,
      errorState: (message) => this,
      removedState: () => this,
    );
  }
}
