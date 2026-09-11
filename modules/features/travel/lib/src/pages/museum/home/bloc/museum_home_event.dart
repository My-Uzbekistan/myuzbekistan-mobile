part of 'museum_home_bloc.dart';

@freezed
abstract class MuseumHomeEvent with _$MuseumHomeEvent {
  factory MuseumHomeEvent.loadData() = _MuseumHomeLoadDataEvent;

  factory MuseumHomeEvent.favoriteChanged({required ItemChange change}) =
      _MuseumHomeFavoriteChangedEvent;

  factory MuseumHomeEvent.toggleFavorite({required MuseumCard museum}) =
      _MuseumHomeToggleFavoriteEvent;
}
