// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_session_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeviceSessionDto _$DeviceSessionDtoFromJson(Map<String, dynamic> json) =>
    DeviceSessionDto(
      id: (json['id'] as num).toInt(),
      platform: json['platform'] as String?,
      deviceModel: json['deviceModel'] as String?,
      appVersion: json['appVersion'] as String?,
      osVersion: json['osVersion'] as String?,
      ipAddress: json['ipAddress'] as String?,
      lastActiveAt: json['lastActiveAt'] as String?,
      isCurrent: json['isCurrent'] as bool?,
    );

Map<String, dynamic> _$DeviceSessionDtoToJson(DeviceSessionDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'platform': instance.platform,
      'deviceModel': instance.deviceModel,
      'appVersion': instance.appVersion,
      'osVersion': instance.osVersion,
      'ipAddress': instance.ipAddress,
      'lastActiveAt': instance.lastActiveAt,
      'isCurrent': instance.isCurrent,
    };
