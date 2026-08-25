import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'market_orders_event.dart';
part 'market_orders_state.dart';
part 'market_orders_bloc.freezed.dart';

@injectable
class MarketOrdersBloc extends Bloc<MarketOrdersEvent, MarketOrdersState> {
  final MarketRepository _repository;

  MarketOrdersBloc(this._repository) : super(MarketOrdersState()) {
    on<_MarketOrdersStartEvent>(_start);
    on<_MarketOrdersLoadDataEvent>(_loadData);
    on<_MarketOrdersToggleDetailsEvent>(_toggleDetails);
  }

  void _start(_MarketOrdersStartEvent event, Emitter<MarketOrdersState> emit) {
    emit(state.copyWith(group: event.group));
    add(MarketOrdersEvent.loadData());
  }

  Future<void> _loadData(
    _MarketOrdersLoadDataEvent event,
    Emitter<MarketOrdersState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, errorMessage: null));
    try {
      final orders = await _repository.orders();
      final visible = orders
          .where((e) => state.group.contains(e.status))
          .toList();
      emit(
        state.copyWith(
          orders: visible,
          expandedOrderIds: visible.isEmpty ? const {} : {visible.first.id},
          loadFailed: false,
        ),
      );
    } catch (e) {
      emit(state.copyWith(loadFailed: true, errorMessage: _errorMessage(e)));
    }
    emit(state.copyWith(isLoading: false));
  }

  void _toggleDetails(
    _MarketOrdersToggleDetailsEvent event,
    Emitter<MarketOrdersState> emit,
  ) {
    final expanded = Set<int>.from(state.expandedOrderIds);
    if (!expanded.remove(event.orderId)) expanded.add(event.orderId);
    emit(state.copyWith(expandedOrderIds: expanded));
  }

  String? _errorMessage(Object error) {
    if (error is DioException && error.error is AppException) {
      return (error.error as AppException).message;
    }
    return null;
  }
}
