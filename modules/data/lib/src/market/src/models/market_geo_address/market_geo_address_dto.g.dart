// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'market_geo_address_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MarketGeoAddressDto _$MarketGeoAddressDtoFromJson(Map<String, dynamic> json) =>
    MarketGeoAddressDto(
      line: json['line'] as String?,
      district: json['district'] as String?,
      lat: (json['lat'] as num?)?.toDouble(),
      lon: (json['lon'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$MarketGeoAddressDtoToJson(
  MarketGeoAddressDto instance,
) => <String, dynamic>{
  'line': instance.line,
  'district': instance.district,
  'lat': instance.lat,
  'lon': instance.lon,
};
