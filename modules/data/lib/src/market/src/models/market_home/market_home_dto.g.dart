// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'market_home_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MarketHomeDto _$MarketHomeDtoFromJson(Map<String, dynamic> json) =>
    MarketHomeDto(
      city: json['city'] == null
          ? null
          : MarketCityDto.fromJson(json['city'] as Map<String, dynamic>),
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => MarketCategoryDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      blocks: (json['blocks'] as List<dynamic>?)
          ?.map((e) => MarketBlockDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MarketHomeDtoToJson(MarketHomeDto instance) =>
    <String, dynamic>{
      'city': instance.city,
      'categories': instance.categories,
      'blocks': instance.blocks,
    };
