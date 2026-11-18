part of 'market_product_detail_bloc.dart';

@freezed
abstract class MarketProductDetailState with _$MarketProductDetailState {
  factory MarketProductDetailState({
    @Default(0) int productId,
    MarketProductDetail? detail,
    int? selectedDeliveryId,
    @Default(false) bool isLoading,
    @Default(false) bool isRefreshing,
    @Default(false) bool loadFailed,
    @Default(false) bool isReadyForCheckout,
    String? errorMessage,
  }) = _MarketProductDetailState;
}
