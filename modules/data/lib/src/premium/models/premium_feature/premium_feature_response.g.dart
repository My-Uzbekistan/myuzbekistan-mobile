// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'premium_feature_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PremiumFeatureResponse _$PremiumFeatureResponseFromJson(
  Map<String, dynamic> json,
) => PremiumFeatureResponse(
  id: (json['id'] as num?)?.toInt(),
  title: json['title'] as String?,
  description: json['description'] as String?,
  icon: json['icon'] as String?,
);

Map<String, dynamic> _$PremiumFeatureResponseToJson(
  PremiumFeatureResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'description': instance.description,
  'icon': instance.icon,
};
