// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contract_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContractDto _$ContractDtoFromJson(Map<String, dynamic> json) => ContractDto(
  number: json['number'] as String?,
  contractDate: json['contractDate'] == null
      ? null
      : DateTime.parse(json['contractDate'] as String),
  currency: json['currency'] as String?,
  discussionEndDate: json['discussionEndDate'] == null
      ? null
      : DateTime.parse(json['discussionEndDate'] as String),
  totalAmount: (json['totalAmount'] as num?)?.toDouble(),
  endDate: json['endDate'] == null
      ? null
      : DateTime.parse(json['endDate'] as String),
  oqsAmount: (json['oqsAmount'] as num?)?.toDouble(),
  basis: json['basis'] as String?,
  advanceAmount: (json['advanceAmount'] as num?)?.toDouble(),
  region: json['region'] as String?,
  advancePaymentDay: (json['advancePaymentDay'] as num?)?.toInt(),
  paymentPeriodDays: (json['paymentPeriodDays'] as num?)?.toInt(),
  deliveryPeriodDays: (json['deliveryPeriodDays'] as num?)?.toInt(),
  products: (json['products'] as List<dynamic>?)
      ?.map((e) => ContractProductDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  productProperties: (json['productProperties'] as List<dynamic>?)
      ?.map(
        (e) => ContractProductPropertyDto.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
  goods: (json['goods'] as List<dynamic>?)
      ?.map((e) => ContractGoodDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  paymentInfoDeliveryDays: (json['paymentInfoDeliveryDays'] as num?)?.toInt(),
  paymentInfoPrepaymentDays: (json['paymentInfoPrepaymentDays'] as num?)
      ?.toInt(),
  advancePercent: (json['advancePercent'] as num?)?.toInt(),
  paymentInfoPaymentDays: (json['paymentInfoPaymentDays'] as num?)?.toInt(),
  customerAddress: json['customerAddress'] as String?,
);

Map<String, dynamic> _$ContractDtoToJson(ContractDto instance) =>
    <String, dynamic>{
      'number': instance.number,
      'contractDate': instance.contractDate?.toIso8601String(),
      'currency': instance.currency,
      'discussionEndDate': instance.discussionEndDate?.toIso8601String(),
      'totalAmount': instance.totalAmount,
      'endDate': instance.endDate?.toIso8601String(),
      'oqsAmount': instance.oqsAmount,
      'basis': instance.basis,
      'advanceAmount': instance.advanceAmount,
      'region': instance.region,
      'advancePaymentDay': instance.advancePaymentDay,
      'paymentPeriodDays': instance.paymentPeriodDays,
      'deliveryPeriodDays': instance.deliveryPeriodDays,
      'products': instance.products,
      'productProperties': instance.productProperties,
      'goods': instance.goods,
      'paymentInfoDeliveryDays': instance.paymentInfoDeliveryDays,
      'paymentInfoPrepaymentDays': instance.paymentInfoPrepaymentDays,
      'advancePercent': instance.advancePercent,
      'paymentInfoPaymentDays': instance.paymentInfoPaymentDays,
      'customerAddress': instance.customerAddress,
    };
