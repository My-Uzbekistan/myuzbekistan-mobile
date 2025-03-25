import 'package:core/src/data/dto_models/detail/content_dto.dart';
import 'package:core/src/data/network/convertors/image_convertor.dart';
import 'package:core/src/data/network/convertors/view_type_convertor.dart';
import 'package:core/src/domain/models/content_detail.dart';
import 'package:core/src/domain/models/place_model.dart';
import 'package:core/src/shared/view_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'content_dto_model.freezed.dart';

part 'content_dto_model.g.dart';

@freezed
class ContentCategoriesDto with _$ContentCategoriesDto {
  const ContentCategoriesDto._();

  const factory ContentCategoriesDto({
    required int categoryId,
    required String categoryName,
    @Default(0) int viewType,
    MainPageContentDto? recommended,
    @Default([]) List<MainPageContentDto> contents,
  }) = _ContentCategoriesDto;

  factory ContentCategoriesDto.fromJson(Map<String, dynamic> json) =>
      _$ContentCategoriesDtoFromJson(json);

  ContentCategories toDomain() {
    return ContentCategories(
        categoryId: categoryId,
        categoryName: categoryName,
        viewType: ViewType.getType(viewType),
        recommended: recommended?.toDomain(),
        contents: contents.map((e) => e.toDomain()).toList());
  }
}

@freezed
class MainPageContentDto with _$MainPageContentDto {
  const MainPageContentDto._();

  const factory MainPageContentDto(
          {required int contentId,
          String? title,
          String? caption,
          @ImageArrayConvertor() @Default([]) List<String> photos,
          @ImageConvertor() String? photo,
          String? region,
          String? address,
          List<FacilityItemDto>? facilities,
          List<String>? languages,
          double? ratingAverage,
          int? averageCheck,
          double? price,
          double? priceInDollar,
          bool? isFavorite,
          @Default(ViewType.places) @ViewTypeConvertor() ViewType viewType}) =
      _MainPageContentDto;

  factory MainPageContentDto.fromJson(Map<String, dynamic> json) =>
      _$MainPageContentDtoFromJson(json);

  MainPageContent toDomain() {
    return MainPageContent(
        contentId: contentId,
        title: title,
        caption: caption,
        photos: photos,
        photo: photo,
        region: region,
        address: address,
        languages: languages ?? [],
        facilities: facilities
                ?.map((e) => Facility(id: e.id, name: e.name, icon: e.icon))
                .toList() ??
            [],
        ratingAverage: ratingAverage,
        averageCheck: averageCheck,
        price: price,
        priceInDollar: priceInDollar,
        viewType: viewType,
    isFavorite: isFavorite??false
    );
  }
}
