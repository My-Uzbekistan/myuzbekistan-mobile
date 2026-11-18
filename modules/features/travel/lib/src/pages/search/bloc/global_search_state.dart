part of 'global_search_bloc.dart';

@freezed
abstract class GlobalSearchState with _$GlobalSearchState {
  factory GlobalSearchState({
    @Default("") String query,
    @Default([]) List<String> popular,
    @Default([]) List<SearchHistoryItem> history,
    @Default([]) List<SearchSuggestion> suggestions,
    @Default(false) bool isLoading,
    String? errorMessage,
  }) = _GlobalSearchState;

  const GlobalSearchState._();

  bool get hasQuery => query.trim().length >= globalSearchMinQueryLength;

  bool get showSuggestions => hasQuery;
}
