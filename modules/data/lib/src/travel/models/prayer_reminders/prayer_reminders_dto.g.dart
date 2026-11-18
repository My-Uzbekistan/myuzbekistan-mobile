// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prayer_reminders_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PrayerRemindersDto _$PrayerRemindersDtoFromJson(Map<String, dynamic> json) =>
    PrayerRemindersDto(
      locationId: (json['locationId'] as num?)?.toInt(),
      prayers: (json['prayers'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$PrayerRemindersDtoToJson(PrayerRemindersDto instance) =>
    <String, dynamic>{
      'locationId': instance.locationId,
      'prayers': instance.prayers,
    };
