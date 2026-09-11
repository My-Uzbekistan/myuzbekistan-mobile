// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_group_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchGroupDto _$SearchGroupDtoFromJson(Map<String, dynamic> json) =>
    SearchGroupDto(
      categoryId: (json['categoryId'] as num).toInt(),
      title: json['title'] as String?,
      totalItems: (json['totalItems'] as num?)?.toInt(),
      deeplink: json['deeplink'] as String?,
      items:
          (json['items'] as List<dynamic>?)
              ?.map(
                (e) => MainPageContentDto.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          [],
    );

Map<String, dynamic> _$SearchGroupDtoToJson(SearchGroupDto instance) =>
    <String, dynamic>{
      'categoryId': instance.categoryId,
      'title': instance.title,
      'totalItems': instance.totalItems,
      'deeplink': instance.deeplink,
      'items': instance.items,
    };
