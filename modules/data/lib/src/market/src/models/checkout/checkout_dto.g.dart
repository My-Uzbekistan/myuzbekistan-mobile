// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkout_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CheckoutDto _$CheckoutDtoFromJson(Map<String, dynamic> json) => CheckoutDto(
  delivery: json['delivery'] == null
      ? null
      : DeliveryMethodDto.fromJson(json['delivery'] as Map<String, dynamic>),
  address: json['address'] == null
      ? null
      : MarketAddressDto.fromJson(json['address'] as Map<String, dynamic>),
  phone: json['phone'] as String?,
  items: (json['items'] as List<dynamic>?)
      ?.map((e) => CartItemDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  price: json['price'] == null
      ? null
      : CheckoutPriceDto.fromJson(json['price'] as Map<String, dynamic>),
  priceDetails: json['priceDetails'] == null
      ? null
      : MarketPriceDetailsDto.fromJson(
          json['priceDetails'] as Map<String, dynamic>,
        ),
  freeCancellationUntil: json['freeCancellationUntil'] as String?,
);

Map<String, dynamic> _$CheckoutDtoToJson(CheckoutDto instance) =>
    <String, dynamic>{
      'delivery': instance.delivery,
      'address': instance.address,
      'phone': instance.phone,
      'items': instance.items,
      'price': instance.price,
      'priceDetails': instance.priceDetails,
      'freeCancellationUntil': instance.freeCancellationUntil,
    };
