part of 'check_pin_bloc.dart';



@freezed
abstract class CheckPinCodeEvent with _$CheckPinCodeEvent {
  factory CheckPinCodeEvent.setPinCode(
      {required String pinCode})=_SetPinCodeEvent;
  factory CheckPinCodeEvent.removeLast()=_RemoveLastPinEvent;
  factory CheckPinCodeEvent.reset()=_ResetPinEvent;
  factory CheckPinCodeEvent.clear()=_ClearPinEvent;
  factory CheckPinCodeEvent.send({required String pinCode}) = _SendEvent;

  factory  CheckPinCodeEvent.openBiometricAuth({required String localizedReason}) = _OpenBiometricAuthEvent;
}