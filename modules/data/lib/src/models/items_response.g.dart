// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'items_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItemsResponse<T> _$ItemsResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) => ItemsResponse<T>(
  items: (json['items'] as List<dynamic>).map(fromJsonT).toList(),
  totalItems: (json['totalItems'] as num).toInt(),
);

Map<String, dynamic> _$ItemsResponseToJson<T>(
  ItemsResponse<T> instance,
  Object? Function(T value) toJsonT,
) => <String, dynamic>{
  'items': instance.items.map(toJsonT).toList(),
  'totalItems': instance.totalItems,
};
