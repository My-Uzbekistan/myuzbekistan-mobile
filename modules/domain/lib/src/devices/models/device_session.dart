import 'device_platform.dart';

class DeviceSession {
  final int id;
  final DevicePlatform platform;
  final String? deviceModel;
  final String? appVersion;
  final String? osVersion;
  final String? ipAddress;
  final DateTime? lastActiveAt;
  final bool isCurrent;

  DeviceSession({
    required this.id,
    required this.platform,
    required this.isCurrent,
    this.deviceModel,
    this.appVersion,
    this.osVersion,
    this.ipAddress,
    this.lastActiveAt,
  });
}
