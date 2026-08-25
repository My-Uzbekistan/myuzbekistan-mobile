import 'package:data/src/market/src/models/market_category/market_category_dto.dart';
import 'package:data/src/market/src/models/market_product/market_product_dto.dart';
import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'market_product_list_dto.g.dart';

@JsonSerializable()
class MarketProductListDto {
  final MarketCategoryDto? category;
  final List<MarketProductDto>? items;
  final int? totalItems;

  MarketProductListDto({this.category, this.items, this.totalItems});

  factory MarketProductListDto.fromJson(Map<String, dynamic> json) =>
      _$MarketProductListDtoFromJson(json);

  MarketProductList toDomain() => MarketProductList(
    category: category?.toDomain(),
    items: items?.map((e) => e.toDomain()).toList() ?? const [],
    totalItems: totalItems ?? 0,
  );
}
