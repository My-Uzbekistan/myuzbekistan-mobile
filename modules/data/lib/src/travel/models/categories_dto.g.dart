// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoriesDto _$CategoriesDtoFromJson(Map<String, dynamic> json) =>
    CategoriesDto(
      name: json['name'] as String?,
      icon: const ImageConvertor().fromJson(json['icon'] as String?),
      id: (json['id'] as num).toInt(),
    );

Map<String, dynamic> _$CategoriesDtoToJson(CategoriesDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'icon': const ImageConvertor().toJson(instance.icon),
      'id': instance.id,
    };
