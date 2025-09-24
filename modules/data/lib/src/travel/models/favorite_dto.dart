

import 'package:data/src/travel/models/places/content_dto_model.dart';
import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part "favorite_dto.g.dart";

@JsonSerializable()
class FavoriteDto {
  int? totalItems;

  List<MainPageContentDto>? items;

  FavoriteDto({this.totalItems, this.items});

  factory FavoriteDto.fromJson(Map<String, dynamic> json) =>
      _$FavoriteDtoFromJson(json);

  Map<String, dynamic> toJson() => _$FavoriteDtoToJson(this);

  Favorite toDomain() {
    return Favorite(
        totalItems: totalItems ?? 0,
        contents: items?.map((e) => e.toDomain()).toList() ?? []);
  }
}
