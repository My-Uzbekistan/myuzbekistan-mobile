import 'dart:async';

import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'premium_event.dart';

part 'premium_state.dart';

part 'premium_bloc.freezed.dart';

@injectable
class PremiumBloc extends Bloc<PremiumEvent, PremiumState> {
  final PremiumRepository _repository;

  PremiumBloc(this._repository) : super(PremiumState()) {
    on<_Plans>(_plans);
    on<_SelectPlan>(_selectPlan);
    on<_PaymentSucceeded>(_paymentSucceeded);
  }

  /// To'lov muvaffaqiyatli yakunlangach: joriy premium holatini olib,
  /// PremiumCancelScreen'ga o'tish signalini (status bilan) emit qiladi.
  Future<void> _paymentSucceeded(
    _PaymentSucceeded event,
    Emitter<PremiumState> emit,
  ) async {
    try {
      final status = await _repository.status();
      emit(state.copyWith(navToCancel: status));
    } catch (e) {
      logger.e("Premium status error $e");
    }
  }

  void _plans(_Plans event, Emitter<PremiumState> emitter) async {
    try {
      final result = await _repository.plans();
      emitter(state.copyWith(plans: result,isLoading: false));
    } catch (e) {
      logger.e("Premium Plan Error $e");
      emitter(state.copyWith(isLoading: false));
    }
  }
  void _selectPlan(_SelectPlan event, Emitter<PremiumState> emitter) async {
    emitter(state.copyWith(item: event.item));
  }
}
