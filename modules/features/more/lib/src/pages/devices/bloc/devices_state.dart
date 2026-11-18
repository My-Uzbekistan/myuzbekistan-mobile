part of 'devices_bloc.dart';

@freezed
abstract class DevicesState with _$DevicesState {
  const DevicesState._();

  const factory DevicesState({
    @Default([]) List<DeviceSession> sessions,
    @Default(false) bool isLoading,
    @Default(false) bool isTerminatingOthers,
    int? terminatingId,
    String? errorMessage,
  }) = _DevicesState;

  DeviceSession? get currentSession =>
      sessions.firstOrNullWhere((e) => e.isCurrent);

  List<DeviceSession> get otherSessions =>
      sessions.where((e) => !e.isCurrent).toList();
}
