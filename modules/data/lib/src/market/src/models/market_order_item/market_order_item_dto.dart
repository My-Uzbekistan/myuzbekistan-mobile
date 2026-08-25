import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'market_order_item_dto.g.dart';

@JsonSerializable()
class MarketOrderItemDto {
  final int productId;
  final String? name;
  final String? categoryName;
  final String? photo;
  final double? rating;
  final int price;
  final int quantity;

  MarketOrderItemDto({
    required this.productId,
    required this.price,
    required this.quantity,
    this.name,
    this.categoryName,
    this.photo,
    this.rating,
  });

  factory MarketOrderItemDto.fromJson(Map<String, dynamic> json) =>
      _$MarketOrderItemDtoFromJson(json);

  MarketOrderItem toDomain() => MarketOrderItem(
    productId: productId,
    name: name ?? "",
    categoryName: categoryName ?? "",
    photo: photo ?? "",
    rating: rating ?? 0,
    price: price,
    quantity: quantity,
  );
}
