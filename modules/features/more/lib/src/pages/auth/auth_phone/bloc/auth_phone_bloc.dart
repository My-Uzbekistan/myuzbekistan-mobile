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

  void _sendEvent(AuthPhoneEvent event, Emitter<AuthPhoneState> emit) {
    try {
      _repository.sendCode(phoneNumber: state.phoneNumber);
      emit(state.copyWith(codeSend: true));
    } catch (_) {}
  }
}
