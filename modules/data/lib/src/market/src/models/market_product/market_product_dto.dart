import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'market_product_dto.g.dart';

@JsonSerializable()
class MarketProductDto {
  final int id;
  final String? name;
  final List<String>? photos;
  final int price;
  final int? oldPrice;
  final bool? isFavorite;
  final int? cartQuantity;
  final String? sellerName;

  MarketProductDto({
    required this.id,
    required this.price,
    this.name,
    this.photos,
    this.oldPrice,
    this.isFavorite,
    this.cartQuantity,
    this.sellerName,
  });

  factory MarketProductDto.fromJson(Map<String, dynamic> json) =>
      _$MarketProductDtoFromJson(json);

  MarketProduct toDomain() => MarketProduct(
    id: id,
    name: name ?? "",
    photos: photos ?? const [],
    price: price,
    oldPrice: oldPrice,
    isFavorite: isFavorite ?? false,
    cartQuantity: cartQuantity ?? 0,
    sellerName: sellerName,
  );
}
