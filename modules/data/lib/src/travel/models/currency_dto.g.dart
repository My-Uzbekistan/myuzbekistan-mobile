// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CurrencyDto _$CurrencyDtoFromJson(Map<String, dynamic> json) => CurrencyDto(
  id: (json['id'] as num?)?.toInt(),
  ccy: json['ccy'] as String?,
  rate: json['rate'] as String?,
  title: json['title'] as String?,
);

Map<String, dynamic> _$CurrencyDtoToJson(CurrencyDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ccy': instance.ccy,
      'rate': instance.rate,
      'title': instance.title,
    };
