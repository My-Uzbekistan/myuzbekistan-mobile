part of 'market_home_bloc.dart';

@freezed
abstract class MarketHomeEvent with _$MarketHomeEvent {
  factory MarketHomeEvent.loadData() = _MarketHomeLoadDataEvent;

  factory MarketHomeEvent.loadCart() = _MarketHomeLoadCartEvent;

  factory MarketHomeEvent.selectCity({required MarketCity city}) =
      _MarketHomeSelectCityEvent;

  factory MarketHomeEvent.toggleFavorite({required MarketProduct product}) =
      _MarketHomeToggleFavoriteEvent;

  factory MarketHomeEvent.productChanged({required ItemChange change}) =
      _MarketHomeProductChangedEvent;

  factory MarketHomeEvent.changeCartQuantity({
    required MarketProduct product,
    required int quantity,
  }) = _MarketHomeChangeCartQuantityEvent;
}
