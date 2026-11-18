// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_result_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchResultDto _$SearchResultDtoFromJson(Map<String, dynamic> json) =>
    SearchResultDto(
      query: json['query'] as String?,
      totalItems: (json['totalItems'] as num?)?.toInt(),
      cities: json['cities'] == null
          ? null
          : SearchCitiesBlockDto.fromJson(
              json['cities'] as Map<String, dynamic>,
            ),
      services: json['services'] == null
          ? null
          : SearchServicesBlockDto.fromJson(
              json['services'] as Map<String, dynamic>,
            ),
      merchants: json['merchants'] == null
          ? null
          : SearchMerchantsBlockDto.fromJson(
              json['merchants'] as Map<String, dynamic>,
            ),
      groups:
          (json['groups'] as List<dynamic>?)
              ?.map((e) => SearchGroupDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$SearchResultDtoToJson(SearchResultDto instance) =>
    <String, dynamic>{
      'query': instance.query,
      'totalItems': instance.totalItems,
      'cities': instance.cities,
      'services': instance.services,
      'merchants': instance.merchants,
      'groups': instance.groups,
    };
