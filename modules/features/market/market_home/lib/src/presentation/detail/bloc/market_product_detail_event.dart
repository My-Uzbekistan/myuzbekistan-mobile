part of 'market_product_detail_bloc.dart';

@freezed
abstract class MarketProductDetailEvent with _$MarketProductDetailEvent {
  factory MarketProductDetailEvent.start({required int productId}) =
      _MarketProductDetailStartEvent;

  factory MarketProductDetailEvent.refresh() = _MarketProductDetailRefreshEvent;

  factory MarketProductDetailEvent.productChanged({
    required ItemChange change,
  }) = _MarketProductDetailProductChangedEvent;

  factory MarketProductDetailEvent.toggleFavorite() =
      _MarketProductDetailToggleFavoriteEvent;

  factory MarketProductDetailEvent.changeCartQuantity({required int quantity}) =
      _MarketProductDetailChangeCartQuantityEvent;

  factory MarketProductDetailEvent.selectDelivery({required int deliveryId}) =
      _MarketProductDetailSelectDeliveryEvent;

  factory MarketProductDetailEvent.buyNow() = _MarketProductDetailBuyNowEvent;
}
