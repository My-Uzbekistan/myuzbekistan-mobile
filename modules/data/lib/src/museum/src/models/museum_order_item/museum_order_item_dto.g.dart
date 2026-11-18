// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'museum_order_item_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MuseumOrderItemDto _$MuseumOrderItemDtoFromJson(Map<String, dynamic> json) =>
    MuseumOrderItemDto(
      tariffId: json['tariffId'] as String,
      title: json['title'] as String?,
      audience: json['audience'] as String?,
      category: json['category'] as String?,
      quantity: (json['quantity'] as num?)?.toInt(),
      unitPrice: (json['unitPrice'] as num?)?.toInt(),
      totalAmount: (json['totalAmount'] as num?)?.toInt(),
    );

Map<String, dynamic> _$MuseumOrderItemDtoToJson(MuseumOrderItemDto instance) =>
    <String, dynamic>{
      'tariffId': instance.tariffId,
      'title': instance.title,
      'audience': instance.audience,
      'category': instance.category,
      'quantity': instance.quantity,
      'unitPrice': instance.unitPrice,
      'totalAmount': instance.totalAmount,
    };
