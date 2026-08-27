// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_location_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CityLocationDto _$CityLocationDtoFromJson(Map<String, dynamic> json) =>
    CityLocationDto(
      title: json['title'] as String?,
      regionName: json['regionName'] as String?,
      distanceText: json['distanceText'] as String?,
      routeTitle: json['routeTitle'] as String?,
      lat: (json['lat'] as num?)?.toDouble(),
      lon: (json['lon'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$CityLocationDtoToJson(CityLocationDto instance) =>
    <String, dynamic>{
      'title': instance.title,
      'regionName': instance.regionName,
      'distanceText': instance.distanceText,
      'routeTitle': instance.routeTitle,
      'lat': instance.lat,
      'lon': instance.lon,
    };
