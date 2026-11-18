import 'package:data/src/market/src/models/market_block/market_block_dto.dart';
import 'package:data/src/market/src/models/market_category/market_category_dto.dart';
import 'package:data/src/market/src/models/market_city/market_city_dto.dart';
import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'market_home_dto.g.dart';

@JsonSerializable()
class MarketHomeDto {
  final MarketCityDto? city;
  final List<MarketCategoryDto>? categories;
  final List<MarketBlockDto>? blocks;

  MarketHomeDto({this.city, this.categories, this.blocks});

  factory MarketHomeDto.fromJson(Map<String, dynamic> json) =>
      _$MarketHomeDtoFromJson(json);

  MarketHome toDomain() => MarketHome(
    city: city?.toDomain(),
    categories: categories?.map((e) => e.toDomain()).toList() ?? const [],
    blocks: blocks?.map((e) => e.toDomain()).toList() ?? const [],
  );
}
