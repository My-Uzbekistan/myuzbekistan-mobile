part of 'history_bloc.dart';



@Freezed(map: FreezedMapOptions(),when: FreezedWhenOptions())
abstract class HistoryEvent with _$HistoryEvent {
  const factory HistoryEvent.loadNext() = HistoryLoadNextEvent;

}
