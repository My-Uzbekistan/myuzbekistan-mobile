import 'package:data/src/travel/models/content_dto_model/content_dto_model.dart';
import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'search_group_dto.g.dart';

@JsonSerializable()
class SearchGroupDto {
  final int categoryId;
  final String? title;
  final int? totalItems;
  final String? deeplink;
  @JsonKey(defaultValue: [])
  final List<MainPageContentDto> items;

  SearchGroupDto({
    required this.categoryId,
    this.title,
    this.totalItems,
    this.deeplink,
    this.items = const [],
  });

  factory SearchGroupDto.fromJson(Map<String, dynamic> json) =>
      _$SearchGroupDtoFromJson(json);

  SearchGroup toDomain() => SearchGroup(
    categoryId: categoryId,
    title: title ?? "",
    totalItems: totalItems ?? items.length,
    deeplink: deeplink,
    items: items.map((e) => e.toDomain()).toList(),
  );
}
