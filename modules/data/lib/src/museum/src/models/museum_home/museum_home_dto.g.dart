// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'museum_home_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MuseumHomeDto _$MuseumHomeDtoFromJson(Map<String, dynamic> json) =>
    MuseumHomeDto(
      cities: (json['cities'] as List<dynamic>?)
          ?.map((e) => MuseumCityDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      popular: (json['popular'] as List<dynamic>?)
          ?.map((e) => MuseumCardDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      recommended: (json['recommended'] as List<dynamic>?)
          ?.map((e) => MuseumCardDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MuseumHomeDtoToJson(MuseumHomeDto instance) =>
    <String, dynamic>{
      'cities': instance.cities,
      'popular': instance.popular,
      'recommended': instance.recommended,
    };
