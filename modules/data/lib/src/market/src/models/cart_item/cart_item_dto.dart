import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'cart_item_dto.g.dart';

@JsonSerializable()
class CartItemDto {
  final int productId;
  final String? name;
  final String? categoryName;
  final String? photo;
  final int price;
  final int quantity;
  final int? available;
  final bool? isSelected;

  CartItemDto({
    required this.productId,
    required this.price,
    required this.quantity,
    this.name,
    this.categoryName,
    this.photo,
    this.available,
    this.isSelected,
  });

  factory CartItemDto.fromJson(Map<String, dynamic> json) =>
      _$CartItemDtoFromJson(json);

  CartItem toDomain() => CartItem(
    productId: productId,
    name: name ?? "",
    categoryName: categoryName ?? "",
    photo: photo ?? "",
    price: price,
    quantity: quantity,
    available: available ?? quantity,
    isSelected: isSelected ?? false,
  );
}
