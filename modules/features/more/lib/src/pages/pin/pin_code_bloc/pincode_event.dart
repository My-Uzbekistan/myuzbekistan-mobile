part of 'pincode_bloc.dart';



@freezed
abstract class PinCodeEvent with _$PinCodeEvent {
  factory PinCodeEvent.setPinCode({required String pin})=_SetPinCodeEvent;
  factory PinCodeEvent.setInitial({@Default(false) bool isChangePin})=_SetInitialEvent;
  factory PinCodeEvent.removeLast()=_RemoveLastPin;
  factory PinCodeEvent.clearPin()=_ClearPin;
  factory PinCodeEvent.reset()=_ResetPin;
  factory PinCodeEvent.removePin()=_RemovePin;
  factory PinCodeEvent.createPin({required String pin}) = _CreatePinEvent;
}