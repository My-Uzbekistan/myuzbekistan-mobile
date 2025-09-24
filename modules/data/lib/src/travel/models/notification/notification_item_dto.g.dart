// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_item_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationItemDto _$NotificationItemDtoFromJson(Map<String, dynamic> json) =>
    NotificationItemDto(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String?,
      image: const ImageConvertor().fromJson(json['image'] as String?),
      content: json['content'] as String?,
      actionLink: json['actionLink'] as String?,
      publishAt: json['publishAt'] as String?,
      isSeen: json['isSeen'] as bool?,
    );

Map<String, dynamic> _$NotificationItemDtoToJson(
  NotificationItemDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'image': const ImageConvertor().toJson(instance.image),
  'content': instance.content,
  'actionLink': instance.actionLink,
  'publishAt': instance.publishAt,
  'isSeen': instance.isSeen,
};
