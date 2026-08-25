// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'market_seller_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MarketSellerDto _$MarketSellerDtoFromJson(Map<String, dynamic> json) =>
    MarketSellerDto(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String?,
      type: json['type'] as String?,
      address: json['address'] as String?,
      lat: (json['lat'] as num?)?.toDouble(),
      lon: (json['lon'] as num?)?.toDouble(),
      distanceMeters: (json['distanceMeters'] as num?)?.toInt(),
    );

Map<String, dynamic> _$MarketSellerDtoToJson(MarketSellerDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'address': instance.address,
      'lat': instance.lat,
      'lon': instance.lon,
      'distanceMeters': instance.distanceMeters,
    };
