part of 'market_order_detail_bloc.dart';

@freezed
abstract class MarketOrderDetailState with _$MarketOrderDetailState {
  factory MarketOrderDetailState({
    @Default(0) int orderId,
    MarketOrder? order,
    @Default(true) bool isDetailsExpanded,
    @Default(false) bool isLoading,
    @Default(false) bool isCancelling,
    @Default(false) bool loadFailed,
    String? errorMessage,
  }) = _MarketOrderDetailState;

  MarketOrderDetailState._();

  bool get isCancelled {
    final order = this.order;
    return order != null && MarketOrderGroup.returned.contains(order.status);
  }
}
