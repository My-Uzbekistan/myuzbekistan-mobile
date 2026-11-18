// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contract_good_spec_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContractGoodSpecDto _$ContractGoodSpecDtoFromJson(Map<String, dynamic> json) =>
    ContractGoodSpecDto(
      unitOfMeasure: json['unitOfMeasure'] as String?,
      type: json['type'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$ContractGoodSpecDtoToJson(
  ContractGoodSpecDto instance,
) => <String, dynamic>{
  'unitOfMeasure': instance.unitOfMeasure,
  'type': instance.type,
  'description': instance.description,
};
