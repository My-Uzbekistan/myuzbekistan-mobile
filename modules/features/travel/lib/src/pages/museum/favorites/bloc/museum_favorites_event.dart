part of 'museum_favorites_bloc.dart';

@freezed
abstract class MuseumFavoritesEvent with _$MuseumFavoritesEvent {
  factory MuseumFavoritesEvent.loadData() = _MuseumFavoritesLoadDataEvent;

  factory MuseumFavoritesEvent.remove({required MuseumCard museum}) =
      _MuseumFavoritesRemoveEvent;
}
