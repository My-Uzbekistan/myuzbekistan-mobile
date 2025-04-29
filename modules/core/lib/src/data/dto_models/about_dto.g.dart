// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'about_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MoreItemDto _$MoreItemDtoFromJson(Map<String, dynamic> json) => MoreItemDto(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String?,
      description: json['description'] as String?,
      photo: const ImageConvertor().fromJson(json['photo'] as String?),
    )..actionUrl = json['actionUrl'] as String?;

Map<String, dynamic> _$MoreItemDtoToJson(MoreItemDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'actionUrl': instance.actionUrl,
      'photo': const ImageConvertor().toJson(instance.photo),
    };
