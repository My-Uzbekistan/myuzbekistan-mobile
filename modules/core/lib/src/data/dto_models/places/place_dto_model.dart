import 'package:core/src/domain/models/place_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'place_dto_model.freezed.dart';

part 'place_dto_model.g.dart';

@freezed
class PlaceCategoriesDto with _$PlaceCategoriesDto {

  const PlaceCategoriesDto._();
  const factory PlaceCategoriesDto({
    required int categoryId, // Only 'id' is required
    required String categoryName,
    @Default([]) List<PlaceDto> contentView,
  }) = _PlaceCategoriesDto;

  factory PlaceCategoriesDto.fromJson(Map<String, dynamic> json) =>
      _$PlaceCategoriesDtoFromJson(json);

  PlaceCategories toDomain() {
    return PlaceCategories(
        categoryId: categoryId,
        categoryName: categoryName,
        contentView: contentView.map((e) => e.toDomain()).toList());
  }
}

@freezed
class PlaceDto with _$PlaceDto {
  const PlaceDto._();
  const factory PlaceDto({
    required int id, // Only 'id' is required
    String? title,
    String? description,
    int? categoryId,
    String? workingHours,
    double? ratingAverage,
    double? price,
    double? priceInDollar,
    String? address,
    bool? recommended,
    String? locale,
    String? image,
    int? status,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _PlaceDto;

  factory PlaceDto.fromJson(Map<String, dynamic> json) =>
      _$PlaceDtoFromJson(json);

  Place toDomain() {
    return Place(
      id: id,
      title: title,
      description: description,
      categoryId: categoryId,
      workingHours: workingHours,
      ratingAverage: ratingAverage,
      price: price,
      priceInDollar: priceInDollar,
      address: address,
      recommended: recommended,
      locale: locale,
      imageUrl: image,
      status: status,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}
