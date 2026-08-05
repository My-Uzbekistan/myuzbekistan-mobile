// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_action_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ServiceActionDto _$ServiceActionDtoFromJson(Map<String, dynamic> json) =>
    ServiceActionDto(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String?,
      url: json['url'] as String?,
      icon: const ImageConvertor().fromJson(json['icon'] as String?),
    );

Map<String, dynamic> _$ServiceActionDtoToJson(ServiceActionDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'url': instance.url,
      'icon': const ImageConvertor().toJson(instance.icon),
    };
