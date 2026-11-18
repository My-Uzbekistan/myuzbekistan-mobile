// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_block_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CityBlockDto _$CityBlockDtoFromJson(Map<String, dynamic> json) => CityBlockDto(
  categoryId: (json['categoryId'] as num).toInt(),
  title: json['title'] as String?,
  items:
      (json['items'] as List<dynamic>?)
          ?.map((e) => MainPageContentDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
);

Map<String, dynamic> _$CityBlockDtoToJson(CityBlockDto instance) =>
    <String, dynamic>{
      'categoryId': instance.categoryId,
      'title': instance.title,
      'items': instance.items,
    };
