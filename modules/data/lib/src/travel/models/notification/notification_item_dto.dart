import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

import '../../../utils/convertors/image_convertor.dart';

part "notification_item_dto.g.dart";

// {
// "id": 96,
// "title": "Shavkat Miromonovich Mirziyoyev",
// "description": "The President",
// "photo": "/uploads/3aae33702326433a8fd538162c8dfaa7"
// }

@JsonSerializable()
class NotificationItemDto {
  int id;
  String? title;
  @ImageConvertor()
  String? image;
  String? content;
  String? actionLink;
  String? publishAt;
  bool? isSeen;

  NotificationItemDto({
    required this.id,
    this.title,
    this.image,
    this.content,
    this.actionLink,
    this.publishAt,
    this.isSeen,
  });

  factory NotificationItemDto.fromJson(Map<String, dynamic> json) =>
      _$NotificationItemDtoFromJson(json);

  Map<String, dynamic> toJson() => _$NotificationItemDtoToJson(this);

  NotificationItem toDomain() {
    return NotificationItem(
      id: id,
      title: title,
      content: content,
      image: image,
      publishAt: publishAt,
      isSeen: isSeen ?? true,
    );
  }
}
