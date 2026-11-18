part of 'favorites_bloc.dart';

@freezed
abstract class FavoritesState with _$FavoritesState {
  factory FavoritesState({
    @Default([]) List<MarketProduct> products,
    @Default(false) bool isLoading,
    @Default(false) bool loadFailed,
    String? errorMessage,
  }) = _FavoritesState;

  const FavoritesState._();

  bool get isEmpty => products.isEmpty;
}
