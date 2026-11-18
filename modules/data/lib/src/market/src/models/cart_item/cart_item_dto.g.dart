// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_item_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CartItemDto _$CartItemDtoFromJson(Map<String, dynamic> json) => CartItemDto(
  productId: (json['productId'] as num).toInt(),
  price: (json['price'] as num).toInt(),
  quantity: (json['quantity'] as num).toInt(),
  name: json['name'] as String?,
  categoryName: json['categoryName'] as String?,
  photo: json['photo'] as String?,
  available: (json['available'] as num?)?.toInt(),
  isSelected: json['isSelected'] as bool?,
);

Map<String, dynamic> _$CartItemDtoToJson(CartItemDto instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'name': instance.name,
      'categoryName': instance.categoryName,
      'photo': instance.photo,
      'price': instance.price,
      'quantity': instance.quantity,
      'available': instance.available,
      'isSelected': instance.isSelected,
    };
