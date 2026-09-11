// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_cities_block_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchCitiesBlockDto _$SearchCitiesBlockDtoFromJson(
  Map<String, dynamic> json,
) => SearchCitiesBlockDto(
  title: json['title'] as String?,
  weekend: json['weekend'] as String?,
  items:
      (json['items'] as List<dynamic>?)
          ?.map((e) => SearchCityDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
);

Map<String, dynamic> _$SearchCitiesBlockDtoToJson(
  SearchCitiesBlockDto instance,
) => <String, dynamic>{
  'title': instance.title,
  'weekend': instance.weekend,
  'items': instance.items,
};
