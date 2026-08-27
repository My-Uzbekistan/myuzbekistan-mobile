part of 'museum_detail_bloc.dart';

@freezed
abstract class MuseumDetailEvent with _$MuseumDetailEvent {
  factory MuseumDetailEvent.start({required String museumId}) =
      _MuseumDetailStartEvent;

  factory MuseumDetailEvent.refresh() = _MuseumDetailRefreshEvent;

  factory MuseumDetailEvent.toggleFavorite() = _MuseumDetailToggleFavoriteEvent;
}
