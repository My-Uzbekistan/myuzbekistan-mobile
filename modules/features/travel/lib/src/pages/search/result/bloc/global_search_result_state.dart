part of 'global_search_result_bloc.dart';

@freezed
abstract class GlobalSearchResultState with _$GlobalSearchResultState {
  factory GlobalSearchResultState({
    @Default("") String query,
    @Default(false) bool isLoading,
    SearchResult? result,
    String? errorMessage,
  }) = _GlobalSearchResultState;

  const GlobalSearchResultState._();

  bool get isEmpty => !isLoading && (result?.isEmpty ?? false);
}
