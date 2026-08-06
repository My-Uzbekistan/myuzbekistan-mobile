// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contract_good_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContractGoodDto _$ContractGoodDtoFromJson(Map<String, dynamic> json) =>
    ContractGoodDto(
      name: json['name'] as String?,
      startingPricePerUnit: (json['startingPricePerUnit'] as num?)?.toDouble(),
      totalPrice: (json['totalPrice'] as num?)?.toDouble(),
      quantity: (json['quantity'] as num?)?.toDouble(),
      spec: json['spec'] == null
          ? null
          : ContractGoodSpecDto.fromJson(json['spec'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ContractGoodDtoToJson(ContractGoodDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'startingPricePerUnit': instance.startingPricePerUnit,
      'totalPrice': instance.totalPrice,
      'quantity': instance.quantity,
      'spec': instance.spec,
    };
