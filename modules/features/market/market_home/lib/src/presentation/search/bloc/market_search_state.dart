part of 'market_search_bloc.dart';

@freezed
abstract class MarketSearchState with _$MarketSearchState {
  factory MarketSearchState({
    @Default("") String query,
    @Default([]) List<MarketSearchHistory> history,
    @Default([]) List<String> suggestions,
    @Default([]) List<MarketProduct> products,
    @Default(0) int totalItems,
    @Default(MarketProductSort.popular) MarketProductSort sort,
    @Default(1) int page,
    @Default(false) bool isLast,
    @Default(false) bool isLoading,
    @Default(false) bool isFirstLoading,
    @Default(false) bool isHintsLoading,
    String? errorMessage,
  }) = _MarketSearchState;

  const MarketSearchState._();

  bool get hasQuery => query.trim().length >= marketSearchMinQueryLength;
}
