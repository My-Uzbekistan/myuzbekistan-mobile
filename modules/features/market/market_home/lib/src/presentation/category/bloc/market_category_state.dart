part of 'market_category_bloc.dart';

@freezed
abstract class MarketCategoryState with _$MarketCategoryState {
  factory MarketCategoryState({
    int? categoryId,
    String? block,
    @Default("") String categoryName,
    @Default(0) int productCount,
    @Default([]) List<MarketProduct> products,
    @Default(MarketProductSort.popular) MarketProductSort sort,
    @Default(1) int page,
    @Default(false) bool isLast,
    @Default(false) bool isFirstLoading,
    @Default(false) bool isLoadingMore,
    @Default(false) bool isRefreshing,
    @Default(false) bool loadFailed,
    @Default(0) int cartCount,
    @Default(0) int cartTotal,
    String? errorMessage,
  }) = _MarketCategoryState;
}
