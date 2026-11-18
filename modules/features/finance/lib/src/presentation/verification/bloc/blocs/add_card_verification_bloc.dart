part of '../verification_bloc.dart';

@Named(VerificationType.addCardVerification)
@Injectable(as: VerificationBloc)
class AddCardVerificationBloc extends VerificationBloc {
  final FinanceRepository _repository;
  final FinanceSharedService _financeSharedService;
  late String cardId;

  AddCardVerificationBloc(
    FinanceRepository rep,
    FinanceSharedService financeSharedService,
  ) : _repository = rep,
      _financeSharedService = financeSharedService,
      super(VerificationState()) {
    on<_VerificationSetCardIdEvent>(_setCardIdEvent);
  }

  @override
  Future<void> _verify(
    _VerificationVerifyEvent event,
    Emitter<VerificationState> emitter,
  ) async {
    try {
      emitter(state.copyWith(isLoading: true));
      final result = await _repository.confirmCard(
        cardId: cardId,
        otp: state.code,
      );
      _financeSharedService.cardsUpdate();
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

  void _setCardIdEvent(
    _VerificationSetCardIdEvent event,
    Emitter<VerificationState> emitter,
  ) {
    cardId = event.cardId;
  }

  @override
  void _resend(
    _VerificationResendEvent event,
    Emitter<VerificationState> emitter,
  ) {
    super._resend(event, emitter);
  }
}
