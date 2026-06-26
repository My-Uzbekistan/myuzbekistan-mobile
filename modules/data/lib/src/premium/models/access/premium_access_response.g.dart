// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'premium_access_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PremiumAccessResponse _$PremiumAccessResponseFromJson(
  Map<String, dynamic> json,
) => PremiumAccessResponse(
  canAccess: json['canAccess'] as bool?,
  reason: json['reason'] as String?,
  usageCount: (json['usageCount'] as num?)?.toInt(),
  limit: (json['limit'] as num?)?.toInt(),
);

Map<String, dynamic> _$PremiumAccessResponseToJson(
  PremiumAccessResponse instance,
) => <String, dynamic>{
  'canAccess': instance.canAccess,
  'reason': instance.reason,
  'usageCount': instance.usageCount,
  'limit': instance.limit,
};
