part of 'market_orders_bloc.dart';

@freezed
abstract class MarketOrdersState with _$MarketOrdersState {
  factory MarketOrdersState({
    @Default(MarketOrderGroup.active) MarketOrderGroup group,
    @Default([]) List<MarketOrder> orders,
    @Default({}) Set<int> expandedOrderIds,
    @Default(false) bool isLoading,
    @Default(false) bool loadFailed,
    String? errorMessage,
  }) = _MarketOrdersState;

  MarketOrdersState._();

  bool get isEmpty => orders.isEmpty;

  bool isExpanded(int orderId) => expandedOrderIds.contains(orderId);
}
