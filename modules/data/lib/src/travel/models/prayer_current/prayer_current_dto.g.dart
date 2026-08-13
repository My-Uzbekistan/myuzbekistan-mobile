// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prayer_current_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PrayerCurrentDto _$PrayerCurrentDtoFromJson(Map<String, dynamic> json) =>
    PrayerCurrentDto(
      key: json['key'] as String?,
      name: json['name'] as String?,
      time: json['time'] as String?,
      nextKey: json['nextKey'] as String?,
      nextName: json['nextName'] as String?,
      nextTime: json['nextTime'] as String?,
      remainingSeconds: (json['remainingSeconds'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PrayerCurrentDtoToJson(PrayerCurrentDto instance) =>
    <String, dynamic>{
      'key': instance.key,
      'name': instance.name,
      'time': instance.time,
      'nextKey': instance.nextKey,
      'nextName': instance.nextName,
      'nextTime': instance.nextTime,
      'remainingSeconds': instance.remainingSeconds,
    };
