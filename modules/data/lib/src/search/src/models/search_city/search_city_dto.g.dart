// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_city_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchCityDto _$SearchCityDtoFromJson(Map<String, dynamic> json) =>
    SearchCityDto(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String?,
      subtitle: json['subtitle'] as String?,
      photo: const ImageConvertor().fromJson(json['photo'] as String?),
      deeplink: json['deeplink'] as String?,
    );

Map<String, dynamic> _$SearchCityDtoToJson(SearchCityDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'subtitle': instance.subtitle,
      'photo': const ImageConvertor().toJson(instance.photo),
      'deeplink': instance.deeplink,
    };
