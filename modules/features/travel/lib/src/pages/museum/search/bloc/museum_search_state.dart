part of 'museum_search_bloc.dart';

@freezed
abstract class MuseumSearchState with _$MuseumSearchState {
  factory MuseumSearchState({
    @Default("") String query,
    @Default([]) List<MuseumCity> cities,
    @Default([]) List<String> history,
    MuseumCity? city,
    @Default(false) bool isLoading,
    String? errorMessage,
  }) = _MuseumSearchState;

  const MuseumSearchState._();

  bool get canSearch => query.trim().isNotEmpty || city != null;

  MuseumSearchQuery get result => MuseumSearchQuery(
    search: city == null && query.trim().isNotEmpty ? query.trim() : null,
    cityId: city?.id,
    cityName: city?.name,
  );
}
