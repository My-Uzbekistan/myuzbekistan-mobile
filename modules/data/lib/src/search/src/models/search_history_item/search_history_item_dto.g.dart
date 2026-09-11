// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_history_item_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchHistoryItemDto _$SearchHistoryItemDtoFromJson(
  Map<String, dynamic> json,
) => SearchHistoryItemDto(
  id: (json['id'] as num).toInt(),
  query: json['query'] as String?,
);

Map<String, dynamic> _$SearchHistoryItemDtoToJson(
  SearchHistoryItemDto instance,
) => <String, dynamic>{'id': instance.id, 'query': instance.query};
