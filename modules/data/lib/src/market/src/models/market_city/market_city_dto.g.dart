// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'market_city_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MarketCityDto _$MarketCityDtoFromJson(Map<String, dynamic> json) =>
    MarketCityDto(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$MarketCityDtoToJson(MarketCityDto instance) =>
    <String, dynamic>{'id': instance.id, 'name': instance.name};
