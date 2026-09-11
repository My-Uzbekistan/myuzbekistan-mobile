import 'package:data/src/search/src/models/search_cities_block/search_cities_block_dto.dart';
import 'package:data/src/search/src/models/search_group/search_group_dto.dart';
import 'package:data/src/search/src/models/search_merchants_block/search_merchants_block_dto.dart';
import 'package:data/src/search/src/models/search_services_block/search_services_block_dto.dart';
import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'search_result_dto.g.dart';

@JsonSerializable()
class SearchResultDto {
  final String? query;
  final int? totalItems;
  final SearchCitiesBlockDto? cities;
  final SearchServicesBlockDto? services;
  final SearchMerchantsBlockDto? merchants;
  @JsonKey(defaultValue: [])
  final List<SearchGroupDto> groups;

  SearchResultDto({
    this.query,
    this.totalItems,
    this.cities,
    this.services,
    this.merchants,
    this.groups = const [],
  });

  factory SearchResultDto.fromJson(Map<String, dynamic> json) =>
      _$SearchResultDtoFromJson(json);

  SearchResult toDomain() => SearchResult(
    query: query ?? "",
    totalItems: totalItems ?? 0,
    cities: cities?.toDomain(),
    services: services?.toDomain(),
    merchants: merchants?.toDomain(),
    groups: groups.map((e) => e.toDomain()).toList(),
  );
}
