part of 'museum_favorites_bloc.dart';

@freezed
abstract class MuseumFavoritesState with _$MuseumFavoritesState {
  factory MuseumFavoritesState({
    @Default([]) List<MuseumCard> museums,
    @Default(false) bool isLoading,
    @Default(false) bool loadFailed,
    String? errorMessage,
  }) = _MuseumFavoritesState;
}
