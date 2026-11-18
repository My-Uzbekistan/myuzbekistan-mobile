// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prayer_location_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PrayerLocationDto _$PrayerLocationDtoFromJson(Map<String, dynamic> json) =>
    PrayerLocationDto(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$PrayerLocationDtoToJson(PrayerLocationDto instance) =>
    <String, dynamic>{'id': instance.id, 'name': instance.name};
