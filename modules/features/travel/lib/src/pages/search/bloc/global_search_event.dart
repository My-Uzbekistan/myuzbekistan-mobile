part of 'global_search_bloc.dart';

@freezed
abstract class GlobalSearchEvent with _$GlobalSearchEvent {
  factory GlobalSearchEvent.loadData({String? query}) =
      _GlobalSearchLoadDataEvent;

  factory GlobalSearchEvent.queryChanged(String query) =
      _GlobalSearchQueryChangedEvent;

  factory GlobalSearchEvent.suggest() = _GlobalSearchSuggestEvent;

  factory GlobalSearchEvent.clearHistory() = _GlobalSearchClearHistoryEvent;

  factory GlobalSearchEvent.removeHistory({required int historyId}) =
      _GlobalSearchRemoveHistoryEvent;
}
