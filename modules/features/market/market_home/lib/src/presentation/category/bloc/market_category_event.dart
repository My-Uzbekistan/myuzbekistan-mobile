part of 'market_category_bloc.dart';

@freezed
abstract class MarketCategoryEvent with _$MarketCategoryEvent {
  factory MarketCategoryEvent.start({
    int? categoryId,
    String? block,
    @Default("") String categoryName,
    @Default(0) int productCount,
  }) = _MarketCategoryStartEvent;

  factory MarketCategoryEvent.refresh() = _MarketCategoryRefreshEvent;

  factory MarketCategoryEvent.productChanged({required ItemChange change}) =
      _MarketCategoryProductChangedEvent;

  factory MarketCategoryEvent.loadCartSummary() =
      _MarketCategoryLoadCartSummaryEvent;

  factory MarketCategoryEvent.loadMore() = _MarketCategoryLoadMoreEvent;

  factory MarketCategoryEvent.changeSort(MarketProductSort sort) =
      _MarketCategoryChangeSortEvent;

  factory MarketCategoryEvent.toggleFavorite({required MarketProduct product}) =
      _MarketCategoryToggleFavoriteEvent;

  factory MarketCategoryEvent.changeCartQuantity({
    required MarketProduct product,
    required int quantity,
  }) = _MarketCategoryChangeCartQuantityEvent;
}
