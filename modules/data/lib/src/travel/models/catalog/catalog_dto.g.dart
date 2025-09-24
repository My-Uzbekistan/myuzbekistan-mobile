// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CatalogDto _$CatalogDtoFromJson(Map<String, dynamic> json) => CatalogDto(
  icon: json['icon'] as String,
  color: _$JsonConverterFromJson<String, Color>(
    json['color'],
    const HexColorConverter().fromJson,
  ),
  title: json['title'] as String,
  status: (json['status'] as num?)?.toInt(),
  action: json['action'] as String?,
  actionType: (json['actionType'] as num?)?.toInt(),
  authRequired: json['authRequired'] as bool?,
);

Map<String, dynamic> _$CatalogDtoToJson(CatalogDto instance) =>
    <String, dynamic>{
      'icon': instance.icon,
      'color': _$JsonConverterToJson<String, Color>(
        instance.color,
        const HexColorConverter().toJson,
      ),
      'title': instance.title,
      'status': instance.status,
      'action': instance.action,
      'actionType': instance.actionType,
      'authRequired': instance.authRequired,
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) => json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);
