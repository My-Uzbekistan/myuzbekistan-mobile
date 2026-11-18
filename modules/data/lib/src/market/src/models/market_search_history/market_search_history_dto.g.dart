// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'market_search_history_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MarketSearchHistoryDto _$MarketSearchHistoryDtoFromJson(
  Map<String, dynamic> json,
) => MarketSearchHistoryDto(
  id: (json['id'] as num).toInt(),
  query: json['query'] as String?,
);

Map<String, dynamic> _$MarketSearchHistoryDtoToJson(
  MarketSearchHistoryDto instance,
) => <String, dynamic>{'id': instance.id, 'query': instance.query};
