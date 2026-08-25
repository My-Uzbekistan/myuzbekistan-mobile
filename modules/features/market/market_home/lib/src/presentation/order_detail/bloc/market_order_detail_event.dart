part of 'market_order_detail_bloc.dart';

@freezed
abstract class MarketOrderDetailEvent with _$MarketOrderDetailEvent {
  factory MarketOrderDetailEvent.start({required int orderId}) =
      _MarketOrderDetailStartEvent;

  factory MarketOrderDetailEvent.loadData() = _MarketOrderDetailLoadDataEvent;

  factory MarketOrderDetailEvent.toggleDetails() =
      _MarketOrderDetailToggleDetailsEvent;

  factory MarketOrderDetailEvent.cancelOrder() =
      _MarketOrderDetailCancelOrderEvent;
}
