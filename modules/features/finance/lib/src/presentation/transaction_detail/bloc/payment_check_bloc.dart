import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'payment_check_event.dart';

part 'payment_check_state.dart';

part 'payment_check_bloc.freezed.dart';

@injectable
class PaymentCheckBloc extends Bloc<PaymentCheckEvent, PaymentCheckState> {
  final FinanceRepository _repository;

  PaymentCheckBloc(this._repository)
    : super(const PaymentCheckState.loading()) {
    on<PaymentCheckLoad>(_load);
  }

  Future<void> _load(
    PaymentCheckLoad event,
    Emitter<PaymentCheckState> emit,
  ) async {
    try {
      final result = await _repository.paymentCheck(paymentId: event.paymentId);
      emit(PaymentCheckState.loaded(transactionItem: result));
    } catch (e) {
      if (e is DioException && e.error is AppException) {
        emit(PaymentCheckState.error(message:(e.error as AppException).message));
      } else {
        emit(PaymentCheckState.error());
      }
    }
  }
}
