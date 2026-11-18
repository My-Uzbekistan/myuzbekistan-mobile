import 'dart:async';

import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'contract_detail_event.dart';

part 'contract_detail_state.dart';

part 'contract_detail_bloc.freezed.dart';

@injectable
class ContractDetailBloc
    extends Bloc<ContractDetailEvent, ContractDetailState> {
  final ContractRepository _repository;

  ContractDetailBloc(this._repository) : super(ContractDetailState()) {
    on<_Load>(_load);
  }

  Future<void> _load(_Load event, Emitter<ContractDetailState> emit) async {
    emit(state.copyWith(isLoading: true, errorMessage: null));
    try {
      final contract = await _repository.detail(event.id);
      emit(state.copyWith(contract: contract, isLoading: false));
    } catch (e) {
      logger.e("Contract detail error $e");
      // TODO(backend): endpoint ulanmagunicha namuna ma'lumot ko'rsatiladi.
      // Haqiqiy API tayyor bo'lgach — bu fallback'ni errorMessage bilan
      // almashtiring (CLAUDE.md dagi Toast qoidasi bo'yicha).
      emit(state.copyWith(contract: Contract.sample(), isLoading: false));
    }
  }
}
