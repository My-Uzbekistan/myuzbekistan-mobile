// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'premium_plans_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PremiumPlansResponse _$PremiumPlansResponseFromJson(
  Map<String, dynamic> json,
) => PremiumPlansResponse(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  description: json['description'] as String?,
  durationInMonths: (json['durationInMonths'] as num?)?.toInt(),
  price: (json['price'] as num?)?.toInt(),
  originalPrice: (json['originalPrice'] as num?)?.toInt(),
  discountPercent: (json['discountPercent'] as num?)?.toInt(),
  features: (json['features'] as List<dynamic>?)
      ?.map((e) => PremiumFeatureResponse.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$PremiumPlansResponseToJson(
  PremiumPlansResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'description': instance.description,
  'durationInMonths': instance.durationInMonths,
  'price': instance.price,
  'originalPrice': instance.originalPrice,
  'discountPercent': instance.discountPercent,
  'features': instance.features,
};
