// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'museum_list_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MuseumListDto _$MuseumListDtoFromJson(Map<String, dynamic> json) =>
    MuseumListDto(
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => MuseumCardDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      page: (json['page'] as num?)?.toInt(),
      totalItems: (json['totalItems'] as num?)?.toInt(),
      totalPages: (json['totalPages'] as num?)?.toInt(),
      hasNext: json['hasNext'] as bool?,
    );

Map<String, dynamic> _$MuseumListDtoToJson(MuseumListDto instance) =>
    <String, dynamic>{
      'items': instance.items,
      'page': instance.page,
      'totalItems': instance.totalItems,
      'totalPages': instance.totalPages,
      'hasNext': instance.hasNext,
    };
