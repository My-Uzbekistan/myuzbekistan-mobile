// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'market_product_list_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MarketProductListDto _$MarketProductListDtoFromJson(
  Map<String, dynamic> json,
) => MarketProductListDto(
  category: json['category'] == null
      ? null
      : MarketCategoryDto.fromJson(json['category'] as Map<String, dynamic>),
  items: (json['items'] as List<dynamic>?)
      ?.map((e) => MarketProductDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  totalItems: (json['totalItems'] as num?)?.toInt(),
);

Map<String, dynamic> _$MarketProductListDtoToJson(
  MarketProductListDto instance,
) => <String, dynamic>{
  'category': instance.category,
  'items': instance.items,
  'totalItems': instance.totalItems,
};
