// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CartDto _$CartDtoFromJson(Map<String, dynamic> json) => CartDto(
  sellers: (json['sellers'] as List<dynamic>?)
      ?.map((e) => CartSellerDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  totalCount: (json['totalCount'] as num?)?.toInt(),
  selectedCount: (json['selectedCount'] as num?)?.toInt(),
  selectedTotal: (json['selectedTotal'] as num?)?.toInt(),
);

Map<String, dynamic> _$CartDtoToJson(CartDto instance) => <String, dynamic>{
  'sellers': instance.sellers,
  'totalCount': instance.totalCount,
  'selectedCount': instance.selectedCount,
  'selectedTotal': instance.selectedTotal,
};
