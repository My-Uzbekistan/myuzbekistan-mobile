import 'package:data/src/market/src/models/cart_item/cart_item_dto.dart';
import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'cart_seller_dto.g.dart';

@JsonSerializable()
class CartSellerDto {
  final int id;
  final String? name;
  final String? type;
  final List<CartItemDto>? items;

  CartSellerDto({required this.id, this.name, this.type, this.items});

  factory CartSellerDto.fromJson(Map<String, dynamic> json) =>
      _$CartSellerDtoFromJson(json);

  CartSeller toDomain() => CartSeller(
    id: id,
    name: name ?? "",
    type: type ?? "",
    items: items?.map((e) => e.toDomain()).toList() ?? const [],
  );
}
