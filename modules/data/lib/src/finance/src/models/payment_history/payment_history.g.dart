// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentHistoryItemDto _$PaymentHistoryItemDtoFromJson(
  Map<String, dynamic> json,
) => PaymentHistoryItemDto(
  date: const DateTimeConverter().fromJson(json['date'] as String?),
  paymentId: json['paymentId'] as String?,
  amount: (json['amount'] as num?)?.toDouble(),
  merchant: json['merchant'] == null
      ? null
      : MerchantItemDto.fromJson(json['merchant'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PaymentHistoryItemDtoToJson(
  PaymentHistoryItemDto instance,
) => <String, dynamic>{
  'date': const DateTimeConverter().toJson(instance.date),
  'paymentId': instance.paymentId,
  'amount': instance.amount,
  'merchant': instance.merchant,
};

MerchantItemDto _$MerchantItemDtoFromJson(Map<String, dynamic> json) =>
    MerchantItemDto(
      icon: const ImageConvertor().fromJson(json['icon'] as String?),
      name: json['name'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$MerchantItemDtoToJson(MerchantItemDto instance) =>
    <String, dynamic>{
      'icon': const ImageConvertor().toJson(instance.icon),
      'name': instance.name,
      'type': instance.type,
    };
