part of 'more_bloc.dart';

@freezed
abstract class MoreState with _$MoreState {
  // factory MoreState.loading() = MoreLoadingState;
  // factory MoreState.errorState() = MoreErrorState;

  factory MoreState({
    @Default([]) List<MoreItem> abouts,
    @Default([]) List<MoreItem> useFull,
    @Default(false) bool prayerWidgetChecked,
   @Default(true) bool isLoading,
  }) = MoreDataState;
}
