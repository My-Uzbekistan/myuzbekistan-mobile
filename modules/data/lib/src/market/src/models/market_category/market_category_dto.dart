import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'market_category_dto.g.dart';

@JsonSerializable()
class MarketCategoryDto {
  final int id;
  final String? name;
  final String? photo;
  final int? productCount;

  MarketCategoryDto({
    required this.id,
    this.name,
    this.photo,
    this.productCount,
  });

  factory MarketCategoryDto.fromJson(Map<String, dynamic> json) =>
      _$MarketCategoryDtoFromJson(json);

  MarketCategory toDomain() => MarketCategory(
    id: id,
    name: name ?? "",
    photo: photo,
    productCount: productCount ?? 0,
  );
}
