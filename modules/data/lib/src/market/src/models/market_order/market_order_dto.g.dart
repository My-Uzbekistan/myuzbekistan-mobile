// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'market_order_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MarketOrderDto _$MarketOrderDtoFromJson(
  Map<String, dynamic> json,
) => MarketOrderDto(
  id: (json['id'] as num).toInt(),
  price: MarketOrderPriceDto.fromJson(json['price'] as Map<String, dynamic>),
  priceDetails: json['priceDetails'] == null
      ? null
      : MarketPriceDetailsDto.fromJson(
          json['priceDetails'] as Map<String, dynamic>,
        ),
  orderNumber: json['orderNumber'] as String?,
  status: json['status'] as String?,
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  deliveryType: json['deliveryType'] as String?,
  deliveryTitle: json['deliveryTitle'] as String?,
  addressLine: json['addressLine'] as String?,
  addressDistrict: json['addressDistrict'] as String?,
  recipientPhone: json['recipientPhone'] as String?,
  canCancel: json['canCancel'] as bool?,
  steps: (json['steps'] as List<dynamic>?)
      ?.map((e) => MarketOrderStepDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  payment: json['payment'] == null
      ? null
      : MarketOrderPaymentDto.fromJson(json['payment'] as Map<String, dynamic>),
  items: (json['items'] as List<dynamic>?)
      ?.map((e) => MarketOrderItemDto.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$MarketOrderDtoToJson(MarketOrderDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'orderNumber': instance.orderNumber,
      'status': instance.status,
      'createdAt': instance.createdAt?.toIso8601String(),
      'price': instance.price,
      'priceDetails': instance.priceDetails,
      'deliveryType': instance.deliveryType,
      'deliveryTitle': instance.deliveryTitle,
      'addressLine': instance.addressLine,
      'addressDistrict': instance.addressDistrict,
      'recipientPhone': instance.recipientPhone,
      'canCancel': instance.canCancel,
      'steps': instance.steps,
      'payment': instance.payment,
      'items': instance.items,
    };
