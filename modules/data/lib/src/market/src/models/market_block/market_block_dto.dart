import 'package:data/src/market/src/models/market_product/market_product_dto.dart';
import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'market_block_dto.g.dart';

@JsonSerializable()
class MarketBlockDto {
  final String? key;
  final String? title;
  final List<MarketProductDto>? products;

  MarketBlockDto({this.key, this.title, this.products});

  factory MarketBlockDto.fromJson(Map<String, dynamic> json) =>
      _$MarketBlockDtoFromJson(json);

  MarketBlock toDomain() => MarketBlock(
    key: key ?? "",
    title: title ?? "",
    products: products?.map((e) => e.toDomain()).toList() ?? const [],
  );
}
