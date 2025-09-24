// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_item_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

KeyValueDto _$KeyValueDtoFromJson(Map<String, dynamic> json) =>
    KeyValueDto(key: json['key'] as String, value: json['value'] as String);

Map<String, dynamic> _$KeyValueDtoToJson(KeyValueDto instance) =>
    <String, dynamic>{'key': instance.key, 'value': instance.value};

TransactionItemDto _$TransactionItemDtoFromJson(Map<String, dynamic> json) =>
    TransactionItemDto(
      items: (json['items'] as List<dynamic>)
          .map((e) => KeyValueDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      date: DateTime.parse(json['date'] as String),
      paymentId: json['paymentId'] as String,
      amount: (json['amount'] as num).toInt(),
      merchant: MerchantItemDto.fromJson(
        json['merchant'] as Map<String, dynamic>,
      ),
      taxQr: json['taxQr'] as String?,
    );

Map<String, dynamic> _$TransactionItemDtoToJson(TransactionItemDto instance) =>
    <String, dynamic>{
      'items': instance.items,
      'date': instance.date.toIso8601String(),
      'paymentId': instance.paymentId,
      'amount': instance.amount,
      'taxQr': instance.taxQr,
      'merchant': instance.merchant,
    };
