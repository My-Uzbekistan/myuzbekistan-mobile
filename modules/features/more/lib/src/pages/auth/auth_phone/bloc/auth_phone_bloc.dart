import 'package:domain/domain.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared/shared.dart';

part 'auth_phone_event.dart';

part 'auth_phone_state.dart';

part 'auth_phone_bloc.freezed.dart';

@injectable
class AuthPhoneBloc extends Bloc<AuthPhoneEvent, AuthPhoneState> {
  final Repository _repository;

  AuthPhoneBloc(this._repository) : super(const AuthPhoneState()) {
    on<_AuthPhoneSetEvent>((event, emit) {
      emit(state.copyWith(phoneNumber: event.phoneNumber));
    });
    on<_AuthPhoneSendEvent>(_sendEvent);
    on<_AuthPushedConfirmEvent>(
      (event, emit) => emit(state.copyWith(codeSend: false, isLoading: false)),
    );
  }

  Future<void> _sendEvent(
    AuthPhoneEvent event,
    Emitter<AuthPhoneState> emit,
  ) async {
    if (state.isLoading) return;
    emit(state.copyWith(isLoading: true, errorMessage: null, isOffline: false));
    try {
      await _repository.sendCode(phoneNumber: state.phoneNumber);
      emit(state.copyWith(isLoading: false, codeSend: true));
    } catch (e) {
      final serverMessage =
          e is DioException && e.error is AppException
              ? (e.error as AppException).message
              : null;
      emit(
        state.copyWith(
          isLoading: false,
          isOffline: e.isConnectionError,
          errorMessage: e.isConnectionError ? null : serverMessage,
        ),
      );
    }
  }
}
