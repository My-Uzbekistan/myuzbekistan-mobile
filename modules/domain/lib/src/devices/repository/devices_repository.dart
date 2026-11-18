import '../models/device_session.dart';

abstract class DevicesRepository {
  Future<List<DeviceSession>> sessions();

  Future<dynamic> terminateSession({required int sessionId});

  Future<dynamic> terminateOtherSessions();

  Future<dynamic> sendLocation({
    required String firebaseToken,
    required double latitude,
    required double longitude,
    double? accuracy,
  });
}
