import 'dart:async';

import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'premium_cancel_event.dart';

part 'premium_cancel_state.dart';

part 'premium_cancel_bloc.freezed.dart';

@injectable
class PremiumCancelBloc extends Bloc<PremiumCancelEvent, PremiumCancelState> {
  final PremiumRepository _repository;
  final AppStatusChangeListeners _appStatusChangeListeners;

  PremiumCancelBloc(this._repository, this._appStatusChangeListeners)
    : super(PremiumCancelState()) {

    on<_Cancel>(_cancel);
  }

  Future<void> _cancel(_Cancel event, Emitter<PremiumCancelState> emit) async {
    emit(state.copyWith(isCancelling: true));
    try {
      await _repository.cancelSubscription();
      _appStatusChangeListeners.refresh();
      emit(state.copyWith(isCancelling: false, isCancelled: true));
    } catch (e) {
      logger.e("Premium cancel error $e");
      emit(state.copyWith(isCancelling: false));
    }
  }
}
