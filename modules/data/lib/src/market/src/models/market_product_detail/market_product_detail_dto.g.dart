// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'market_product_detail_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MarketProductDetailDto _$MarketProductDetailDtoFromJson(
  Map<String, dynamic> json,
) => MarketProductDetailDto(
  id: (json['id'] as num).toInt(),
  price: (json['price'] as num).toInt(),
  blockTitle: json['blockTitle'] as String?,
  name: json['name'] as String?,
  photos: (json['photos'] as List<dynamic>?)?.map((e) => e as String).toList(),
  oldPrice: (json['oldPrice'] as num?)?.toInt(),
  soldThisMonth: (json['soldThisMonth'] as num?)?.toInt(),
  description: json['description'] as String?,
  available: (json['available'] as num?)?.toInt(),
  isFavorite: json['isFavorite'] as bool?,
  cartQuantity: (json['cartQuantity'] as num?)?.toInt(),
  delivery: (json['delivery'] as List<dynamic>?)
      ?.map((e) => DeliveryMethodDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  seller: json['seller'] == null
      ? null
      : MarketSellerDto.fromJson(json['seller'] as Map<String, dynamic>),
);

Map<String, dynamic> _$MarketProductDetailDtoToJson(
  MarketProductDetailDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'blockTitle': instance.blockTitle,
  'name': instance.name,
  'photos': instance.photos,
  'price': instance.price,
  'oldPrice': instance.oldPrice,
  'soldThisMonth': instance.soldThisMonth,
  'description': instance.description,
  'available': instance.available,
  'isFavorite': instance.isFavorite,
  'cartQuantity': instance.cartQuantity,
  'delivery': instance.delivery,
  'seller': instance.seller,
};
