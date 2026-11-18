// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'market_category_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MarketCategoryDto _$MarketCategoryDtoFromJson(Map<String, dynamic> json) =>
    MarketCategoryDto(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String?,
      photo: json['photo'] as String?,
      productCount: (json['productCount'] as num?)?.toInt(),
    );

Map<String, dynamic> _$MarketCategoryDtoToJson(MarketCategoryDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'photo': instance.photo,
      'productCount': instance.productCount,
    };
