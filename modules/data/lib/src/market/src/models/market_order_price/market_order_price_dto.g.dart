// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'market_order_price_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MarketOrderPriceDto _$MarketOrderPriceDtoFromJson(Map<String, dynamic> json) =>
    MarketOrderPriceDto(
      products: (json['products'] as num).toInt(),
      delivery: (json['delivery'] as num).toInt(),
      total: (json['total'] as num).toInt(),
    );

Map<String, dynamic> _$MarketOrderPriceDtoToJson(
  MarketOrderPriceDto instance,
) => <String, dynamic>{
  'products': instance.products,
  'delivery': instance.delivery,
  'total': instance.total,
};
