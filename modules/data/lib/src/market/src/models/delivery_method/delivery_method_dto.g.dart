// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_method_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeliveryMethodDto _$DeliveryMethodDtoFromJson(Map<String, dynamic> json) =>
    DeliveryMethodDto(
      id: (json['id'] as num).toInt(),
      type: json['type'] as String?,
      title: json['title'] as String?,
      subtitle: json['subtitle'] as String?,
      price: (json['price'] as num?)?.toInt(),
      selected: json['selected'] as bool?,
    );

Map<String, dynamic> _$DeliveryMethodDtoToJson(DeliveryMethodDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'price': instance.price,
      'selected': instance.selected,
    };
