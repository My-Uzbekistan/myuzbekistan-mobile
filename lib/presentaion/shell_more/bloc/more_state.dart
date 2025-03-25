part of 'more_bloc.dart';

@freezed
abstract class MoreState with _$MoreState {
  factory MoreState.loading() = _MoreLoadingState;

  factory MoreState.dataState({
    @Default([]) List<MoreItem> abouts,
    @Default([]) List<MoreItem> useFull,
    @Default([]) List<Currency> currencies,
  }) = _MoreDataState;
}
