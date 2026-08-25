// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'market_price_details_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MarketPriceDetailsDto _$MarketPriceDetailsDtoFromJson(
  Map<String, dynamic> json,
) => MarketPriceDetailsDto(
  title: json['title'] as String?,
  rows: (json['rows'] as List<dynamic>?)
      ?.map((e) => MarketPriceRowDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  total: json['total'] == null
      ? null
      : MarketPriceRowDto.fromJson(json['total'] as Map<String, dynamic>),
  notice: json['notice'] == null
      ? null
      : MarketPriceNoticeDto.fromJson(json['notice'] as Map<String, dynamic>),
);

Map<String, dynamic> _$MarketPriceDetailsDtoToJson(
  MarketPriceDetailsDto instance,
) => <String, dynamic>{
  'title': instance.title,
  'rows': instance.rows,
  'total': instance.total,
  'notice': instance.notice,
};
