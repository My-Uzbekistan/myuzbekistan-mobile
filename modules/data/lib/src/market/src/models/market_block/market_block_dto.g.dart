// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'market_block_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MarketBlockDto _$MarketBlockDtoFromJson(Map<String, dynamic> json) =>
    MarketBlockDto(
      key: json['key'] as String?,
      title: json['title'] as String?,
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => MarketProductDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MarketBlockDtoToJson(MarketBlockDto instance) =>
    <String, dynamic>{
      'key': instance.key,
      'title': instance.title,
      'products': instance.products,
    };
