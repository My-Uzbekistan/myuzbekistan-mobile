// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'museum_tariff_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MuseumTariffDto _$MuseumTariffDtoFromJson(Map<String, dynamic> json) =>
    MuseumTariffDto(
      id: json['id'] as String,
      title: json['title'] as String?,
      price: (json['price'] as num?)?.toInt(),
      currency: json['currency'] as String?,
      purchasable: json['purchasable'] as bool?,
      audience: json['audience'] as String?,
      category: json['category'] as String?,
      code: json['code'] as String?,
      validHours: (json['validHours'] as num?)?.toInt(),
      children: (json['children'] as List<dynamic>?)
          ?.map((e) => MuseumTariffDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MuseumTariffDtoToJson(MuseumTariffDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'price': instance.price,
      'currency': instance.currency,
      'purchasable': instance.purchasable,
      'audience': instance.audience,
      'category': instance.category,
      'code': instance.code,
      'validHours': instance.validHours,
      'children': instance.children,
    };
