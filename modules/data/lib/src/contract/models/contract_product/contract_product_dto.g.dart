// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contract_product_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContractProductDto _$ContractProductDtoFromJson(Map<String, dynamic> json) =>
    ContractProductDto(
      name: json['name'] as String?,
      code: json['code'] as String?,
      quantity: (json['quantity'] as num?)?.toDouble(),
      price: (json['price'] as num?)?.toDouble(),
      totalAmount: (json['totalAmount'] as num?)?.toDouble(),
      advance: (json['advance'] as num?)?.toDouble(),
      description: json['description'] as String?,
    );

Map<String, dynamic> _$ContractProductDtoToJson(ContractProductDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'code': instance.code,
      'quantity': instance.quantity,
      'price': instance.price,
      'totalAmount': instance.totalAmount,
      'advance': instance.advance,
      'description': instance.description,
    };
