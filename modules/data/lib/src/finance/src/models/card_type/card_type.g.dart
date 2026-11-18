// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CardTypeDto _$CardTypeDtoFromJson(Map<String, dynamic> json) => CardTypeDto(
  prefix: (json['prefix'] as num?)?.toInt(),
  bankName: json['bankName'] as String?,
  cardType: json['cardType'] as String?,
  cardBrand: json['cardBrand'] as String?,
)..isExternal = json['isExternal'] as bool?;

Map<String, dynamic> _$CardTypeDtoToJson(CardTypeDto instance) =>
    <String, dynamic>{
      'prefix': instance.prefix,
      'bankName': instance.bankName,
      'cardType': instance.cardType,
      'cardBrand': instance.cardBrand,
      'isExternal': instance.isExternal,
    };
