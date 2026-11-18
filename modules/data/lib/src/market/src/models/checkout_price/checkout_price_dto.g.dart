// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkout_price_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CheckoutPriceDto _$CheckoutPriceDtoFromJson(Map<String, dynamic> json) =>
    CheckoutPriceDto(
      products: (json['products'] as num?)?.toInt(),
      delivery: (json['delivery'] as num?)?.toInt(),
      total: (json['total'] as num?)?.toInt(),
    );

Map<String, dynamic> _$CheckoutPriceDtoToJson(CheckoutPriceDto instance) =>
    <String, dynamic>{
      'products': instance.products,
      'delivery': instance.delivery,
      'total': instance.total,
    };
