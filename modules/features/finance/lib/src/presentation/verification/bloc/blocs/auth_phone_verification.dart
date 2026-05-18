part of '../verification_bloc.dart';

@Named(VerificationType.authVerification)
@Injectable(as: VerificationBloc)
class AuthPhoneVerificationBloc extends VerificationBloc {
  final Repository _repository;
  final SecurityStorage _securityStorage;

  late String phoneNumber;

  AuthPhoneVerificationBloc(Repository rep, SecurityStorage securityStorage)
    : _repository = rep,
      _securityStorage = securityStorage,
      super(VerificationState()) {
    on<_VerificationSetPhoneEvent>((
      _VerificationSetPhoneEvent event,
      Emitter<VerificationState> emitter,
    ) {
      emitter(state.copyWith(phone: event.phone));
      phoneNumber = event.phone;
    });
  }

  @override
  Future<void> _verify(
    _VerificationVerifyEvent event,
    Emitter<VerificationState> emitter,
  ) async {
    try {
      emitter(state.copyWith(isLoading: true));
      final result = await _repository.authConfirmCode(
        phoneNumber: phoneNumber,
        code: state.code,
      );
      await _securityStorage.setToken(token: result);
      emitter(
        state.copyWith(
          isLoading: false,
          navState: VerificationNavState.complete(),
        ),
      );
    } catch (e) {
      emitter(state.copyWith(isLoading: false, hasError: true));
    }
  }

  @override
  Future<void> _resend(
    _VerificationResendEvent event,
    Emitter<VerificationState> emitter,
  ) async {
    try {
      emitter(state.copyWith(isLoading: true));
      final result = await _repository.sendCode(phoneNumber: phoneNumber);
    } catch (e) {
      emitter(state.copyWith(isLoading: false, hasError: true));
    }
  }
}
