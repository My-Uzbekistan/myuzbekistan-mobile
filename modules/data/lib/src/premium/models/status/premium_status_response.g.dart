// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'premium_status_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PremiumStatusResponse _$PremiumStatusResponseFromJson(
  Map<String, dynamic> json,
) => PremiumStatusResponse(
  isPremium: json['isPremium'] as bool?,
  planName: json['planName'] as String?,
  planDescription: json['planDescription'] as String?,
  startDate: json['startDate'] as String?,
  endDate: json['endDate'] as String?,
  durationInMonths: (json['durationInMonths'] as num?)?.toInt(),
  daysRemaining: (json['daysRemaining'] as num?)?.toInt(),
);

Map<String, dynamic> _$PremiumStatusResponseToJson(
  PremiumStatusResponse instance,
) => <String, dynamic>{
  'isPremium': instance.isPremium,
  'planName': instance.planName,
  'planDescription': instance.planDescription,
  'startDate': instance.startDate,
  'endDate': instance.endDate,
  'durationInMonths': instance.durationInMonths,
  'daysRemaining': instance.daysRemaining,
};
