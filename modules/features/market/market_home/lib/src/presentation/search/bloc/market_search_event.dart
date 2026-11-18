part of 'market_search_bloc.dart';

@freezed
abstract class MarketSearchEvent with _$MarketSearchEvent {
  factory MarketSearchEvent.loadInitial() = _MarketSearchLoadInitialEvent;

  factory MarketSearchEvent.queryChanged(String query) =
      _MarketSearchQueryChangedEvent;

  factory MarketSearchEvent.search() = _MarketSearchSearchEvent;

  factory MarketSearchEvent.submit(String query) = _MarketSearchSubmitEvent;

  factory MarketSearchEvent.loadMore() = _MarketSearchLoadMoreEvent;

  factory MarketSearchEvent.productChanged({required ItemChange change}) =
      _MarketSearchProductChangedEvent;

  factory MarketSearchEvent.changeSort(MarketProductSort sort) =
      _MarketSearchChangeSortEvent;

  factory MarketSearchEvent.removeHistory(int searchId) =
      _MarketSearchRemoveHistoryEvent;

  factory MarketSearchEvent.toggleFavorite({required MarketProduct product}) =
      _MarketSearchToggleFavoriteEvent;

  factory MarketSearchEvent.changeCartQuantity({
    required MarketProduct product,
    required int quantity,
  }) = _MarketSearchChangeCartQuantityEvent;
}
