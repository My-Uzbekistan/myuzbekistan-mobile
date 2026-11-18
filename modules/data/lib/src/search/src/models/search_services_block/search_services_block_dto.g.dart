// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_services_block_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchServicesBlockDto _$SearchServicesBlockDtoFromJson(
  Map<String, dynamic> json,
) => SearchServicesBlockDto(
  title: json['title'] as String?,
  totalItems: (json['totalItems'] as num?)?.toInt(),
  items:
      (json['items'] as List<dynamic>?)
          ?.map((e) => SearchServiceDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
);

Map<String, dynamic> _$SearchServicesBlockDtoToJson(
  SearchServicesBlockDto instance,
) => <String, dynamic>{
  'title': instance.title,
  'totalItems': instance.totalItems,
  'items': instance.items,
};
