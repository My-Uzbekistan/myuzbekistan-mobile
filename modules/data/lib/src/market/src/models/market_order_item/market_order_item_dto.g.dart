// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'market_order_item_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MarketOrderItemDto _$MarketOrderItemDtoFromJson(Map<String, dynamic> json) =>
    MarketOrderItemDto(
      productId: (json['productId'] as num).toInt(),
      price: (json['price'] as num).toInt(),
      quantity: (json['quantity'] as num).toInt(),
      name: json['name'] as String?,
      categoryName: json['categoryName'] as String?,
      photo: json['photo'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$MarketOrderItemDtoToJson(MarketOrderItemDto instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'name': instance.name,
      'categoryName': instance.categoryName,
      'photo': instance.photo,
      'rating': instance.rating,
      'price': instance.price,
      'quantity': instance.quantity,
    };
