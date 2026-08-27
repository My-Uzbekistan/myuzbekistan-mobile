part of 'museum_detail_bloc.dart';

@freezed
abstract class MuseumDetailState with _$MuseumDetailState {
  factory MuseumDetailState({
    @Default("") String museumId,
    MuseumDetail? detail,
    MuseumReviews? reviews,
    @Default(false) bool isLoading,
    @Default(false) bool isRefreshing,
    @Default(false) bool loadFailed,
    String? errorMessage,
  }) = _MuseumDetailState;
}
