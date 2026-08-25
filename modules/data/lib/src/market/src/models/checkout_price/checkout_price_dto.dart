import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'checkout_price_dto.g.dart';

@JsonSerializable()
class CheckoutPriceDto {
  final int? products;
  final int? delivery;
  final int? total;

  CheckoutPriceDto({this.products, this.delivery, this.total});

  factory CheckoutPriceDto.fromJson(Map<String, dynamic> json) =>
      _$CheckoutPriceDtoFromJson(json);

  CheckoutPrice toDomain() => CheckoutPrice(
    products: products ?? 0,
    delivery: delivery ?? 0,
    total: total ?? 0,
  );
}
