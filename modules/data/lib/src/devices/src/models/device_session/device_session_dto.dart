import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'device_session_dto.g.dart';

@JsonSerializable()
class DeviceSessionDto {
  final int id;
  final String? platform;
  final String? deviceModel;
  final String? appVersion;
  final String? osVersion;
  final String? ipAddress;
  final String? location;
  final String? lastActiveAt;
  final bool? isOnline;
  final bool? isCurrent;

  DeviceSessionDto({
    required this.id,
    this.platform,
    this.deviceModel,
    this.appVersion,
    this.osVersion,
    this.ipAddress,
    this.location,
    this.lastActiveAt,
    this.isOnline,
    this.isCurrent,
  });

  factory DeviceSessionDto.fromJson(Map<String, dynamic> json) =>
      _$DeviceSessionDtoFromJson(json);

  DeviceSession toDomain() => DeviceSession(
    id: id,
    platform: DevicePlatform.values.firstWhere(
      (e) => e.name == platform?.toLowerCase(),
      orElse: () => DevicePlatform.unknown,
    ),
    deviceModel: deviceModel,
    appVersion: appVersion,
    osVersion: osVersion,
    ipAddress: ipAddress,
    location: location,
    lastActiveAt: DateTime.tryParse(lastActiveAt ?? "")?.toLocal(),
    isOnline: isOnline ?? false,
    isCurrent: isCurrent ?? false,
  );
}
