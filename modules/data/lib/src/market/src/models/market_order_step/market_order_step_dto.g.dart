// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'market_order_step_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MarketOrderStepDto _$MarketOrderStepDtoFromJson(Map<String, dynamic> json) =>
    MarketOrderStepDto(
      key: json['key'] as String?,
      title: json['title'] as String?,
      state: json['state'] as String?,
    );

Map<String, dynamic> _$MarketOrderStepDtoToJson(MarketOrderStepDto instance) =>
    <String, dynamic>{
      'key': instance.key,
      'title': instance.title,
      'state': instance.state,
    };
