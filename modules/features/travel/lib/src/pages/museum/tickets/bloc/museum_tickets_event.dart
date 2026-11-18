part of 'museum_tickets_bloc.dart';

@freezed
abstract class MuseumTicketsEvent with _$MuseumTicketsEvent {
  factory MuseumTicketsEvent.start({required MuseumOrderState filter}) =
      _MuseumTicketsStartEvent;

  factory MuseumTicketsEvent.refresh() = _MuseumTicketsRefreshEvent;
}
