// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_merchants_block_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchMerchantsBlockDto _$SearchMerchantsBlockDtoFromJson(
  Map<String, dynamic> json,
) => SearchMerchantsBlockDto(
  title: json['title'] as String?,
  totalItems: (json['totalItems'] as num?)?.toInt(),
  items:
      (json['items'] as List<dynamic>?)
          ?.map((e) => SearchMerchantDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
);

Map<String, dynamic> _$SearchMerchantsBlockDtoToJson(
  SearchMerchantsBlockDto instance,
) => <String, dynamic>{
  'title': instance.title,
  'totalItems': instance.totalItems,
  'items': instance.items,
};
