part of 'museum_search_bloc.dart';

@freezed
abstract class MuseumSearchEvent with _$MuseumSearchEvent {
  factory MuseumSearchEvent.loadData({String? query}) =
      _MuseumSearchLoadDataEvent;

  factory MuseumSearchEvent.queryChanged(String query) =
      _MuseumSearchQueryChangedEvent;

  factory MuseumSearchEvent.selectCity({required MuseumCity city}) =
      _MuseumSearchSelectCityEvent;

  factory MuseumSearchEvent.clearHistory() = _MuseumSearchClearHistoryEvent;
}
