import 'dart:async';

import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'market_order_detail_event.dart';
part 'market_order_detail_state.dart';
part 'market_order_detail_bloc.freezed.dart';

@injectable
class MarketOrderDetailBloc
    extends Bloc<MarketOrderDetailEvent, MarketOrderDetailState> {
  final MarketRepository _repository;
  final AppRefreshListener _refresh;
  StreamSubscription<AppRefreshTopic>? _refreshSubscription;

  MarketOrderDetailBloc(this._repository, this._refresh)
    : super(MarketOrderDetailState()) {
    on<_MarketOrderDetailStartEvent>(_start);
    on<_MarketOrderDetailLoadDataEvent>(_loadData);
    on<_MarketOrderDetailToggleDetailsEvent>(_toggleDetails);
    on<_MarketOrderDetailCancelOrderEvent>(_cancelOrder);

    _refreshSubscription = _refresh
        .observe({AppRefreshTopic.marketOrders})
        .listen((_) => add(MarketOrderDetailEvent.loadData()));
  }

  @override
  Future<void> close() {
    _refreshSubscription?.cancel();
    return super.close();
  }

  void _start(
    _MarketOrderDetailStartEvent event,
    Emitter<MarketOrderDetailState> emit,
  ) {
    emit(state.copyWith(orderId: event.orderId));
    add(MarketOrderDetailEvent.loadData());
  }

  Future<void> _loadData(
    _MarketOrderDetailLoadDataEvent event,
    Emitter<MarketOrderDetailState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, errorMessage: null));
    try {
      final order = await _repository.order(id: state.orderId);
      emit(state.copyWith(order: order, loadFailed: false));
    } catch (e) {
      emit(state.copyWith(loadFailed: true, errorMessage: _errorMessage(e)));
    }
    emit(state.copyWith(isLoading: false));
  }

  void _toggleDetails(
    _MarketOrderDetailToggleDetailsEvent event,
    Emitter<MarketOrderDetailState> emit,
  ) {
    emit(state.copyWith(isDetailsExpanded: !state.isDetailsExpanded));
  }

  Future<void> _cancelOrder(
    _MarketOrderDetailCancelOrderEvent event,
    Emitter<MarketOrderDetailState> emit,
  ) async {
    emit(state.copyWith(isCancelling: true, errorMessage: null));
    try {
      await _repository.cancelOrder(id: state.orderId);
      final order = await _repository.order(id: state.orderId);
      emit(state.copyWith(order: order));
      _refresh.notify(AppRefreshTopic.marketOrders);
    } catch (e) {
      emit(state.copyWith(errorMessage: _errorMessage(e)));
    }
    emit(state.copyWith(isCancelling: false));
  }

  String? _errorMessage(Object error) {
    if (error is DioException && error.error is AppException) {
      return (error.error as AppException).message;
    }
    return null;
  }
}
