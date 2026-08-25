// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'market_address_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MarketAddressDto _$MarketAddressDtoFromJson(Map<String, dynamic> json) =>
    MarketAddressDto(
      id: (json['id'] as num).toInt(),
      line: json['line'] as String?,
      district: json['district'] as String?,
      lat: (json['lat'] as num?)?.toDouble(),
      lon: (json['lon'] as num?)?.toDouble(),
      isDefault: json['isDefault'] as bool?,
    );

Map<String, dynamic> _$MarketAddressDtoToJson(MarketAddressDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'line': instance.line,
      'district': instance.district,
      'lat': instance.lat,
      'lon': instance.lon,
      'isDefault': instance.isDefault,
    };
