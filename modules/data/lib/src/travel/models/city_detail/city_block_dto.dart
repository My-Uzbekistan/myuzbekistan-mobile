import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

import '../content_dto_model/content_dto_model.dart';

part 'city_block_dto.g.dart';

@JsonSerializable()
class CityBlockDto {
  final int categoryId;
  final String? title;
  @JsonKey(defaultValue: [])
  final List<MainPageContentDto> items;

  CityBlockDto({
    required this.categoryId,
    this.title,
    this.items = const [],
  });

  factory CityBlockDto.fromJson(Map<String, dynamic> json) =>
      _$CityBlockDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CityBlockDtoToJson(this);

  CityBlock toDomain() => CityBlock(
        categoryId: categoryId,
        title: title ?? "",
        items: items.map((e) => e.toDomain()).toList(),
      );
}
