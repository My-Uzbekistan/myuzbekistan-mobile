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
    on<_PremiumFetchStatus>(fetchStatus);
  }

  FutureOr<void> fetchStatus(_PremiumFetchStatus event,
      Emitter<PremiumState> emit,) {

  }
}
