// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cities_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CityItemDto _$CityItemDtoFromJson(Map<String, dynamic> json) => CityItemDto(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String?,
  photo: const ImageConvertor().fromJson(json['photo'] as String?),
);

Map<String, dynamic> _$CityItemDtoToJson(CityItemDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'photo': const ImageConvertor().toJson(instance.photo),
    };

CitiesResponseDto _$CitiesResponseDtoFromJson(Map<String, dynamic> json) =>
    CitiesResponseDto(
      weekend: json['weekend'] as String?,
      items:
          (json['items'] as List<dynamic>?)
              ?.map((e) => CityItemDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$CitiesResponseDtoToJson(CitiesResponseDto instance) =>
    <String, dynamic>{'weekend': instance.weekend, 'items': instance.items};
