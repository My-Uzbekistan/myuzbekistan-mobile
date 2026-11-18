// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'air_quality_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AirQualityDto _$AirQualityDtoFromJson(Map<String, dynamic> json) =>
    AirQualityDto(
      aqi: (json['aqi'] as num).toInt(),
      level: (json['level'] as num).toInt(),
      mainPollutant: json['mainPollutant'] as String?,
    );

Map<String, dynamic> _$AirQualityDtoToJson(AirQualityDto instance) =>
    <String, dynamic>{
      'aqi': instance.aqi,
      'level': instance.level,
      'mainPollutant': instance.mainPollutant,
    };
