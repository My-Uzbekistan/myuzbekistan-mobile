// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_top_up_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentResultTopUpResponseDto _$PaymentResultTopUpResponseDtoFromJson(
  Map<String, dynamic> json,
) => PaymentResultTopUpResponseDto(
  paymentId: json['paymentId'] as String,
  checkUrl: json['checkUrl'] as String?,
);

Map<String, dynamic> _$PaymentResultTopUpResponseDtoToJson(
  PaymentResultTopUpResponseDto instance,
) => <String, dynamic>{
  'paymentId': instance.paymentId,
  'checkUrl': instance.checkUrl,
};
