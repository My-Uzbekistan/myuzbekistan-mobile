import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'pincode_event.dart';

part 'pincode_state.dart';

part 'pincode_bloc.freezed.dart';

@injectable
class PinCodeBloc extends Bloc<PinCodeEvent, PinCodeState> {
  final Repository _repository;
  final SecurityStorage _securityStorage;
  final AppStatusChangeListeners _appStatusChangeListeners;

  final int pinLength = 4;
  var isChangePin = false;

  PinCodeBloc(
    this._repository,
    this._securityStorage,
    this._appStatusChangeListeners,
  ) : super(PinCodeState.entryState("")) {
    on<_SetPinCodeEvent>((event, emit) async {
      if (state is PinEntryState) {
        final pin = (state as PinEntryState).pinCode + event.pin;
        if (pin.length == pinLength) {
          emit(PinConfirmState(pinCode: pin, confirmPinCode: ""));
        } else {
          emit(PinEntryState(pin));
        }
      } else if (state is PinConfirmState) {
        final confirmPin =
            (state as PinConfirmState).confirmPinCode + event.pin;
        final pin = (state as PinConfirmState).pinCode;
        if (confirmPin.length == pinLength) {
          if (confirmPin == pin) {
            add(PinCodeEvent.createPin(pin: pin));
          } else {
            emit((state as PinConfirmState).copyWith(hasError: true));
          }
        } else {
          emit(
            PinConfirmState(
              pinCode: pin,
              confirmPinCode: confirmPin,
              hasError: false,
            ),
          );
        }
      }
    });
    on<_RemoveLastPin>((event, emit) {
      emit(state.removeLast());
    });

    on<_SetInitialEvent>((event, emit) {
      isChangePin = event.isChangePin;
    });

    on<_RemovePin>(_removePinEvent);

    on<_ClearPin>((event, emit) {
      if (state is PinConfirmState) {
        emit((state as PinConfirmState).copyWith(confirmPinCode: ""));
      }
    });
    on<_CreatePinEvent>(_createEvent);
    on<_ResetPin>((event, emit) => emit(PinCodeState.entryState("")));
  }

  Future<void> _removePinEvent(
    _RemovePin event,
    Emitter<PinCodeState> emitter,
  ) async {
    emitter(PinCodeState.loadingState());
    try {
      final result = await _repository.removePin(
        pin: _securityStorage.getPin().orEmpty(),
      );
      await _securityStorage.deletePin();
      emitter(PinCodeState.removedState());
      _appStatusChangeListeners.refreshProfile();
    } catch (e) {
      if (e is DioException && e.error is AppException) {
        emitter(
          PinCodeState.errorState(message: (e.error as AppException).message),
        );
      } else {
        emitter(PinCodeState.errorState(message: null));
      }
    }
  }

  Future<void> _createEvent(
    _CreatePinEvent event,
    Emitter<PinCodeState> emitter,
  ) async {
    emitter(PinCodeState.loadingState());
    try {
      final result = await _repository.createPin(pin: event.pin);
      await _securityStorage.setHasPin(true);
      await _securityStorage.setPin(event.pin);
      emitter(PinCodeState.successState());
      _appStatusChangeListeners.refreshProfile();
    } catch (e) {
      if (e is DioException && e.error is AppException) {
        emitter(
          PinCodeState.errorState(message: (e.error as AppException).message),
        );
      } else {
        emitter(PinCodeState.errorState(message: null));
      }
    }
  }
}
