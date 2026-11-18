import 'package:data/src/search/src/models/search_service/search_service_dto.dart';
import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'search_services_block_dto.g.dart';

@JsonSerializable()
class SearchServicesBlockDto {
  final String? title;
  final int? totalItems;
  @JsonKey(defaultValue: [])
  final List<SearchServiceDto> items;

  SearchServicesBlockDto({this.title, this.totalItems, this.items = const []});

  factory SearchServicesBlockDto.fromJson(Map<String, dynamic> json) =>
      _$SearchServicesBlockDtoFromJson(json);

  SearchServicesBlock toDomain() => SearchServicesBlock(
    title: title ?? "",
    totalItems: totalItems ?? items.length,
    items: items.map((e) => e.toDomain()).toList(),
  );
}
