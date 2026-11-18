part of 'museum_list_bloc.dart';

@freezed
abstract class MuseumListState with _$MuseumListState {
  factory MuseumListState({
    String? search,
    String? cityId,
    String? cityName,
    @Default(MuseumSort.popular) MuseumSort sort,
    @Default([]) List<MuseumCard> items,
    @Default(0) int totalItems,
    @Default(1) int page,
    @Default(false) bool isLast,
    @Default(false) bool isLoading,
    @Default(false) bool isFirstLoading,
    String? errorMessage,
  }) = _MuseumListState;

  const MuseumListState._();

  String get title => cityName ?? search ?? "";
}
