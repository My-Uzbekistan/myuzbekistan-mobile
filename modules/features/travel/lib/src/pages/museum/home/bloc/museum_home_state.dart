part of 'museum_home_bloc.dart';

@freezed
abstract class MuseumHomeState with _$MuseumHomeState {
  factory MuseumHomeState({
    @Default([]) List<MuseumCity> cities,
    @Default([]) List<MuseumCard> popular,
    @Default([]) List<MuseumCard> recommended,
    @Default(false) bool isLoading,
    @Default(false) bool loadFailed,
    String? errorMessage,
  }) = _MuseumHomeState;

  const MuseumHomeState._();

  bool get isEmpty => popular.isEmpty && recommended.isEmpty;
}
