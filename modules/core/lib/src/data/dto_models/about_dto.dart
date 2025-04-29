import 'package:core/src/data/network/convertors/image_convertor.dart';
import 'package:core/src/domain/models/about.dart';
import 'package:freezed_annotation/freezed_annotation.dart'
    show JsonSerializable;

part "about_dto.g.dart";

// {
// "id": 96,
// "title": "Shavkat Miromonovich Mirziyoyev",
// "description": "The President",
// "photo": "/uploads/3aae33702326433a8fd538162c8dfaa7"
// }

@JsonSerializable()
class MoreItemDto {
  int id;
  String? title;
  String? description;
  String? actionUrl;
  @ImageConvertor()
  String? photo;

  MoreItemDto({required this.id, this.title, this.description, this.photo});

  factory MoreItemDto.fromJson(Map<String, dynamic> json) =>
      _$MoreItemDtoFromJson(json);

  Map<String, dynamic> toJson() => _$MoreItemDtoToJson(this);

  MoreItem toDomain() {
    return MoreItem(
      id: id,
      title: title,
      description: description,
      photo: photo,
      actionUrl: actionUrl,
    );
  }
}
