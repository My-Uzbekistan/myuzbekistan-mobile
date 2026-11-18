part of 'global_search_result_bloc.dart';

@freezed
abstract class GlobalSearchResultEvent with _$GlobalSearchResultEvent {
  factory GlobalSearchResultEvent.loadData({required String query}) =
      _GlobalSearchResultLoadDataEvent;
}
