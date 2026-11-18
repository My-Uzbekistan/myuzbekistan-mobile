import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'market_order_price_dto.g.dart';

@JsonSerializable()
class MarketOrderPriceDto {
  final int products;
  final int delivery;
  final int total;

  MarketOrderPriceDto({
    required this.products,
    required this.delivery,
    required this.total,
  });

  factory MarketOrderPriceDto.fromJson(Map<String, dynamic> json) =>
      _$MarketOrderPriceDtoFromJson(json);

  MarketOrderPrice toDomain() =>
      MarketOrderPrice(products: products, delivery: delivery, total: total);
}
