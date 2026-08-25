// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'market_order_payment_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MarketOrderPaymentDto _$MarketOrderPaymentDtoFromJson(
  Map<String, dynamic> json,
) => MarketOrderPaymentDto(
  maskedPan: json['maskedPan'] as String?,
  ps: json['ps'] as String?,
  icon: json['icon'] as String?,
);

Map<String, dynamic> _$MarketOrderPaymentDtoToJson(
  MarketOrderPaymentDto instance,
) => <String, dynamic>{
  'maskedPan': instance.maskedPan,
  'ps': instance.ps,
  'icon': instance.icon,
};
