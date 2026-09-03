part of 'devices_bloc.dart';

@freezed
abstract class DevicesEvent with _$DevicesEvent {
  factory DevicesEvent.fetch() = _DevicesFetch;

  factory DevicesEvent.terminateSession({required int sessionId}) =
      _DevicesTerminateSession;

  factory DevicesEvent.terminateOthers() = _DevicesTerminateOthers;
}
