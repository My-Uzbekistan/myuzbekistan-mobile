// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_action_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentActionDto _$PaymentActionDtoFromJson(Map<String, dynamic> json) =>
    PaymentActionDto(
      key: json['key'] as String,
      title: json['title'] as String,
      id: (json['id'] as num).toInt(),
    );

Map<String, dynamic> _$PaymentActionDtoToJson(PaymentActionDto instance) =>
    <String, dynamic>{
      'key': instance.key,
      'title': instance.title,
      'id': instance.id,
    };
