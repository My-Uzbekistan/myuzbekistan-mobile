import 'package:domain/domain.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared/shared.dart';

import '../../utils.dart';

part 'check_pin_event.dart';

part 'check_pin_state.dart';

part 'check_pin_bloc.freezed.dart';

@injectable
class CheckPinCodeBloc extends Bloc<CheckPinCodeEvent, CheckPinCodeState> {
  final Repository _repository;
  final SecurityStorage _securityStorage;
  final BiometricUtils _biometricUtils;

  final int pinLength = 4;
  var canBiometric = false;

  CheckPinCodeBloc(
    this._repository,
    this._securityStorage,
    this._biometricUtils,
  ) : super(CheckPinCodeState.entryState("")) {
    on<_SetPinCodeEvent>((event, emit) async {
      if (state is CheckPinEntryState) {
        final pin = (state as CheckPinEntryState).pinCode + event.pinCode;
        if (pin.length == pinLength) {
          add(CheckPinCodeEvent.send(pinCode: pin));
        } else {
          emit(CheckPinEntryState(pin, canBiometric: canBiometric));
        }
      } else {
        emit(CheckPinEntryState(event.pinCode, canBiometric: canBiometric));
      }
    });
    on<_RemoveLastPinEvent>((event, emit) {
      emit(state.removeLast());
    });
    on<_SendEvent>(_sendPin);
    on<_ResetPinEvent>(_resetPin);
    on<_OpenBiometricAuthEvent>(_biometricAuth);
    on<_ClearPinEvent>(
      (event, emit) =>
          emit(CheckPinCodeState.entryState("", canBiometric: canBiometric)),
    );

    init();
  }

  Future<void> init() async {
    if (_securityStorage.getPin() != null) {
      canBiometric = await _biometricUtils.checkCanAuthenticate();
      emit(CheckPinCodeState.entryState("", canBiometric: canBiometric));
    }
  }

  Future<void> _biometricAuth(
    _OpenBiometricAuthEvent event,
    Emitter<CheckPinCodeState> emit,
  ) async {
    try {
      if(_securityStorage.getPin()!=null) {
        canBiometric = await _biometricUtils.checkCanAuthenticate();
        if (canBiometric) {
          final authenticate = await _biometricUtils
              .authenticateWithCustomDialogMessages(event.localizedReason);
          if (authenticate) {
            add(
              CheckPinCodeEvent.send(
                pinCode: _securityStorage.getPin().orEmpty(),
              ),
            );
          }
        }
      }
    } catch (e) {}
  }

  Future<void> _resetPin(
    _ResetPinEvent event,
    Emitter<CheckPinCodeState> emit,
  ) async {
    try {
      final result = _repository.deleteAccount();
    } catch (e) {}

    await _securityStorage.clearData();

    emit(CheckPinCodeState.reset());
  }

  Future<void> _sendPin(
    _SendEvent event,
    Emitter<CheckPinCodeState> emitter,
  ) async {
    emitter(CheckPinCodeState.loadingState());
    try {
      final result = await _repository.verifyPin(pin: event.pinCode);
      await _securityStorage.setPinVerified();
      _securityStorage.setPin(event.pinCode);
      emitter(CheckPinCodeState.successState());
    } catch (e) {
      if (e is DioException && e.error is AppException) {
        emitter(
          CheckPinCodeState.errorState(
            message: (e.error as AppException).message,
          ),
        );
      } else {
        emitter(CheckPinCodeState.errorState(message: null));
      }
    }
  }
}
