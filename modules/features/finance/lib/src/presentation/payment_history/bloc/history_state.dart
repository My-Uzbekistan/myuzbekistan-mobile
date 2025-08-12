part of 'history_bloc.dart';

@Freezed(map: FreezedMapOptions(),when: FreezedWhenOptions())
abstract class HistoryState with _$HistoryState {
  const factory HistoryState.loading() = HistoryLoadingState;

  const factory HistoryState.loaded({
    @Default([]) List<HistoryGroup> items,
  }) = HistoryLoadedState;

  const factory HistoryState.errorState() = HistoryErrorState;
}
