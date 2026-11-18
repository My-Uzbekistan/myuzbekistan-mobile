part of 'market_orders_bloc.dart';

@freezed
abstract class MarketOrdersEvent with _$MarketOrdersEvent {
  factory MarketOrdersEvent.start({required MarketOrderGroup group}) =
      _MarketOrdersStartEvent;

  factory MarketOrdersEvent.loadData() = _MarketOrdersLoadDataEvent;

  factory MarketOrdersEvent.toggleDetails({required int orderId}) =
      _MarketOrdersToggleDetailsEvent;
}
