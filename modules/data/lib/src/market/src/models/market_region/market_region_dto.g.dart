// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'market_region_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MarketRegionDto _$MarketRegionDtoFromJson(Map<String, dynamic> json) =>
    MarketRegionDto(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String?,
      price: (json['price'] as num?)?.toInt(),
    );

Map<String, dynamic> _$MarketRegionDtoToJson(MarketRegionDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
    };
