import 'package:domain/domain.dart';
import 'package:travel/src/pages/museum/museum_error_extension.dart';
import 'package:shared/shared.dart';

part 'museum_tickets_event.dart';
part 'museum_tickets_state.dart';
part 'museum_tickets_bloc.freezed.dart';

@injectable
class MuseumTicketsBloc extends Bloc<MuseumTicketsEvent, MuseumTicketsState> {
  final MuseumRepository _repository;

  MuseumTicketsBloc(this._repository) : super(MuseumTicketsState()) {
    on<_MuseumTicketsStartEvent>(_start);
    on<_MuseumTicketsRefreshEvent>(_refresh);
  }

  Future<void> _start(
    _MuseumTicketsStartEvent event,
    Emitter<MuseumTicketsState> emit,
  ) async {
    emit(state.copyWith(filter: event.filter));
    await _fetch(emit);
  }

  Future<void> _refresh(
    _MuseumTicketsRefreshEvent event,
    Emitter<MuseumTicketsState> emit,
  ) => _fetch(emit);

  Future<void> _fetch(Emitter<MuseumTicketsState> emit) async {
    emit(state.copyWith(isLoading: true, errorMessage: null));
    try {
      final tickets = await _repository.tickets(state: state.filter);
      emit(
        state.copyWith(
          orders: tickets.items,
          activeCount: tickets.activeCount,
          usedCount: tickets.usedCount,
          expiredCount: tickets.expiredCount,
          loadFailed: false,
        ),
      );
    } catch (e) {
      emit(state.copyWith(loadFailed: true, errorMessage: e.errorMessage()));
    }
    emit(state.copyWith(isLoading: false));
  }
}
