part of 'market_catalog_bloc.dart';

@freezed
abstract class MarketCatalogState with _$MarketCatalogState {
  factory MarketCatalogState({
    @Default([]) List<MarketCategory> categories,
    @Default(false) bool isLoading,
    @Default(false) bool loadFailed,
    String? errorMessage,
  }) = _MarketCatalogState;
}
