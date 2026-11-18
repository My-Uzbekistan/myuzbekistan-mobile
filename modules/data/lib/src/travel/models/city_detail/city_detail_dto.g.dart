// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_detail_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CityDetailDto _$CityDetailDtoFromJson(Map<String, dynamic> json) =>
    CityDetailDto(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String?,
      subtitle: json['subtitle'] as String?,
      photo: const ImageConvertor().fromJson(json['photo'] as String?),
      location: json['location'] == null
          ? null
          : CityLocationDto.fromJson(json['location'] as Map<String, dynamic>),
      tickets: json['tickets'] == null
          ? null
          : CityTicketsDto.fromJson(json['tickets'] as Map<String, dynamic>),
      blocks:
          (json['blocks'] as List<dynamic>?)
              ?.map((e) => CityBlockDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$CityDetailDtoToJson(CityDetailDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'subtitle': instance.subtitle,
      'photo': const ImageConvertor().toJson(instance.photo),
      'location': instance.location,
      'tickets': instance.tickets,
      'blocks': instance.blocks,
    };
