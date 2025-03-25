import 'package:core/src/data/dto_models/places/content_dto_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart'
    show JsonSerializable;

import '../../domain/models/favorite.dart';

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
