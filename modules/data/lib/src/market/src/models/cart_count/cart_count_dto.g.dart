// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_count_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CartCountDto _$CartCountDtoFromJson(Map<String, dynamic> json) => CartCountDto(
  count: (json['count'] as num?)?.toInt(),
  title: json['title'] as String?,
);

Map<String, dynamic> _$CartCountDtoToJson(CartCountDto instance) =>
    <String, dynamic>{'count': instance.count, 'title': instance.title};
