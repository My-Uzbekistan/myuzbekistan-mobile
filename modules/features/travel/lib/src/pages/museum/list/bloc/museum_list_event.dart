part of 'museum_list_bloc.dart';

@freezed
abstract class MuseumListEvent with _$MuseumListEvent {
  factory MuseumListEvent.start({
    String? search,
    String? cityId,
    String? cityName,
  }) = _MuseumListStartEvent;

  factory MuseumListEvent.applyQuery({required MuseumSearchQuery query}) =
      _MuseumListApplyQueryEvent;

  factory MuseumListEvent.changeSort({required MuseumSort sort}) =
      _MuseumListChangeSortEvent;

  factory MuseumListEvent.loadMore() = _MuseumListLoadMoreEvent;

  factory MuseumListEvent.favoriteChanged({required ItemChange change}) =
      _MuseumListFavoriteChangedEvent;

  factory MuseumListEvent.toggleFavorite({required MuseumCard museum}) =
      _MuseumListToggleFavoriteEvent;
}
