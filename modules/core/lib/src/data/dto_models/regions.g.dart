// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'regions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegionsDto _$RegionsDtoFromJson(Map<String, dynamic> json) => RegionsDto(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$RegionsDtoToJson(RegionsDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
