// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'market_pickup_point_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MarketPickupPointDto _$MarketPickupPointDtoFromJson(
  Map<String, dynamic> json,
) => MarketPickupPointDto(
  id: (json['id'] as num).toInt(),
  line: json['line'] as String?,
  district: json['district'] as String?,
  schedule: json['schedule'] as String?,
  distance: (json['distance'] as num?)?.toInt(),
  isClosest: json['isClosest'] as bool?,
  lat: (json['lat'] as num?)?.toDouble(),
  lon: (json['lon'] as num?)?.toDouble(),
);

Map<String, dynamic> _$MarketPickupPointDtoToJson(
  MarketPickupPointDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'line': instance.line,
  'district': instance.district,
  'schedule': instance.schedule,
  'distance': instance.distance,
  'isClosest': instance.isClosest,
  'lat': instance.lat,
  'lon': instance.lon,
};
