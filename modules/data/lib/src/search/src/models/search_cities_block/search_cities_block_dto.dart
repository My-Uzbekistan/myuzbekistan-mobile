import 'package:data/src/search/src/models/search_city/search_city_dto.dart';
import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'search_cities_block_dto.g.dart';

@JsonSerializable()
class SearchCitiesBlockDto {
  final String? title;
  final String? weekend;
  @JsonKey(defaultValue: [])
  final List<SearchCityDto> items;

  SearchCitiesBlockDto({this.title, this.weekend, this.items = const []});

  factory SearchCitiesBlockDto.fromJson(Map<String, dynamic> json) =>
      _$SearchCitiesBlockDtoFromJson(json);

  SearchCitiesBlock toDomain() => SearchCitiesBlock(
    title: title ?? "",
    weekend: weekend,
    items: items.map((e) => e.toDomain()).toList(),
  );
}
