// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_seller_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CartSellerDto _$CartSellerDtoFromJson(Map<String, dynamic> json) =>
    CartSellerDto(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String?,
      type: json['type'] as String?,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => CartItemDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CartSellerDtoToJson(CartSellerDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'items': instance.items,
    };
