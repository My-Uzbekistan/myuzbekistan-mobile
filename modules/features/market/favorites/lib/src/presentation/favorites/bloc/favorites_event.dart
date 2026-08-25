part of 'favorites_bloc.dart';

@freezed
abstract class FavoritesEvent with _$FavoritesEvent {
  factory FavoritesEvent.loadData() = _FavoritesLoadDataEvent;

  factory FavoritesEvent.toggleFavorite({required MarketProduct product}) =
      _FavoritesToggleFavoriteEvent;

  factory FavoritesEvent.changeCartQuantity({
    required MarketProduct product,
    required int quantity,
  }) = _FavoritesChangeCartQuantityEvent;
}
