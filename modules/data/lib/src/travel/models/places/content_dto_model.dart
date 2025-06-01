
import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

import '../../../utils/convertors/image_convertor.dart';
import '../../../utils/convertors/view_type_convertor.dart';
import '../detail/content_dto.dart';

part 'content_dto_model.freezed.dart';

part 'content_dto_model.g.dart';

@freezed
abstract class ContentCategoriesDto with _$ContentCategoriesDto {
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
abstract class TemperatureDto with _$TemperatureDto {
  const TemperatureDto._();

  const factory TemperatureDto({
    String? temperature,
    String? condition,
    String? iconUrl,
  }) = _TemperatureDto;

  Temperature toDomain() {
    return Temperature(
      temperature: temperature,
      condition: condition,
      iconUrl: iconUrl,
    );
  }

  factory TemperatureDto.fromJson(Map<String, dynamic> json) =>
      _$TemperatureDtoFromJson(json);
}

@freezed
abstract class MainPageContentDto with _$MainPageContentDto {
  const MainPageContentDto._();

  const factory MainPageContentDto(
          {required int contentId,
          String? title,
          String? caption,
          @ImageArrayConvertor() @Default([]) List<String> photos,
          @ImageConvertor() String? photo,
          String? region,
          String? address,
          double? distance,
          int? reviewCount,
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
        distance: distance,
        reviewCount: reviewCount,
        isFavorite: isFavorite ?? false);
  }
}
