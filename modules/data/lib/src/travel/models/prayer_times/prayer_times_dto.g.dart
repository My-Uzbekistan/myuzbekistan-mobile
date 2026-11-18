// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prayer_times_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PrayerTimesDto _$PrayerTimesDtoFromJson(Map<String, dynamic> json) =>
    PrayerTimesDto(
      locationId: (json['locationId'] as num).toInt(),
      location: json['location'] as String,
      date: json['date'] as String,
      dateText: json['dateText'] as String,
      times:
          (json['times'] as List<dynamic>?)
              ?.map(
                (e) => PrayerTimeItemDto.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const [],
      current: json['current'] == null
          ? null
          : PrayerCurrentDto.fromJson(json['current'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PrayerTimesDtoToJson(PrayerTimesDto instance) =>
    <String, dynamic>{
      'locationId': instance.locationId,
      'location': instance.location,
      'date': instance.date,
      'dateText': instance.dateText,
      'times': instance.times,
      'current': instance.current,
    };
