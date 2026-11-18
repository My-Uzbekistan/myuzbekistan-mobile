// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CardItemDto _$CardItemDtoFromJson(Map<String, dynamic> json) => CardItemDto(
  id: (json['id'] as num).toInt(),
  status: json['status'] as String?,
  statusMessage: json['status_message'] as String?,
  isExternal: json['is_external'] as bool,
  cardNumber: json['card_number'] as String?,
  icon: json['icon'] as String?,
  ps: json['ps'] as String?,
  expiry: json['expiry'] as String?,
  image: json['image'] as String?,
);

Map<String, dynamic> _$CardItemDtoToJson(CardItemDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'status_message': instance.statusMessage,
      'is_external': instance.isExternal,
      'card_number': instance.cardNumber,
      'icon': instance.icon,
      'ps': instance.ps,
      'expiry': instance.expiry,
      'image': instance.image,
    };
