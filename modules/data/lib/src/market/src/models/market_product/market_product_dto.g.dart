// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'market_product_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MarketProductDto _$MarketProductDtoFromJson(Map<String, dynamic> json) =>
    MarketProductDto(
      id: (json['id'] as num).toInt(),
      price: (json['price'] as num).toInt(),
      name: json['name'] as String?,
      photos: (json['photos'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      oldPrice: (json['oldPrice'] as num?)?.toInt(),
      isFavorite: json['isFavorite'] as bool?,
      cartQuantity: (json['cartQuantity'] as num?)?.toInt(),
      sellerName: json['sellerName'] as String?,
    );

Map<String, dynamic> _$MarketProductDtoToJson(MarketProductDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'photos': instance.photos,
      'price': instance.price,
      'oldPrice': instance.oldPrice,
      'isFavorite': instance.isFavorite,
      'cartQuantity': instance.cartQuantity,
      'sellerName': instance.sellerName,
    };
