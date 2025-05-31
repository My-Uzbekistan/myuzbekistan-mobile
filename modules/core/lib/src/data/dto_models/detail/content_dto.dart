import 'package:core/core.dart';
import 'package:core/src/data/network/convertors/image_convertor.dart';
import 'package:core/src/data/network/convertors/view_type_convertor.dart';
import 'package:core/src/shared/view_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'field_dto.dart';

part 'content_dto.freezed.dart';

part 'content_dto.g.dart';

@freezed
class ContentDto with _$ContentDto {
  const ContentDto._();

  const factory ContentDto(
          {required int id,
          String? title,
          String? description,
          int? categoryId,
          String? categoryName,
          bool? isFavorite,
          FieldDto<String?>? workingHours,
          FieldDto<List<double>>? location,
          FieldDto<List<FacilityItemDto>>? facilities,
          FieldDto<List<String>>? languages,
          FieldDto<List<AttachmentsItemDto>>? attachments,
          @ImageArrayConvertor() List<String>? photos,
          @ImageConvertor() String? photo,
          FieldDto<List<ContactsDto>>? contacts,
          double? ratingAverage,
          int? averageCheck,
          double? price,
          double? priceInDollar,
          String? address,
          String? region,
          double? distance,
          String? reviewCount,
          @Default(ViewType.places) @ViewTypeConvertor() ViewType viewType}) =
      _ContentDto;

  factory ContentDto.fromJson(Map<String, dynamic> json) =>
      _$ContentDtoFromJson(json);

  ContentDetail toDomain() {
    return ContentDetail(
        id: id,
        title: title,
        description: description,
        categoryId: categoryId,
        categoryName: categoryName,
        photo: photo,
        photos: photos,
        // phoneNumbers: phoneNumbers?.toDomain(),
        ratingAverage: ratingAverage,
        averageCheck: averageCheck,
        price: price,
        priceInDollar: priceInDollar,
        viewType: viewType,
        address: address,
        languages: languages != null
            ? Field(name: languages?.name, value: languages?.value)
            : null,
        facilities: facilities != null
            ? Field(
                name: facilities?.name,
                value: facilities?.value
                    ?.map((e) => Facility(id: e.id, name: e.name, icon: e.icon))
                    .toList())
            : null,
        attachments: attachments != null
            ? Field(
                name: attachments?.name,
                value: attachments?.value
                    ?.map((e) =>
                        Attachments(name: e.name, icon: e.icon, file: e.files))
                    .toList())
            : null,
        workingHours: workingHours != null
            ? Field(name: workingHours?.name, value: workingHours?.value)
            : null,
        contacts: contacts != null
            ? Field(
                name: contacts?.name,
                value: contacts?.value
                    ?.map((e) => Contacts(
                        name: e.name,
                        icon: e.icon,
                        contact: e.contact,
                        action: e.action))
                    .toList())
            : null,
        location: location != null
            ? Field(name: location?.name, value: location?.value)
            : null,
        isFavorite: isFavorite ?? false,
        region: region,
        reviewCount: reviewCount,
        distance: distance);
  }
}

@freezed
class FacilityItemDto with _$FacilityItemDto {
  const factory FacilityItemDto({
    required int id,
    required String name,
    @ImageConvertor() String? icon,
  }) = _FacilityItemDto;

  factory FacilityItemDto.fromJson(Map<String, dynamic> json) =>
      _$FacilityItemDtoFromJson(json);
}

@freezed
class AttachmentsItemDto with _$AttachmentsItemDto {
  const factory AttachmentsItemDto({
    @ImageConvertor() String? icon,
    String? name,
    @ImageConvertor() String? files,
  }) = _AttachmentsItemDto;

  factory AttachmentsItemDto.fromJson(Map<String, dynamic> json) =>
      _$AttachmentsItemDtoFromJson(json);
}

@freezed
class LanguageItemDto with _$LanguageItemDto {
  const factory LanguageItemDto({
    required FieldDto<String?> id,
    required FieldDto<String?> name,
  }) = _LanguageItemDto;

  factory LanguageItemDto.fromJson(Map<String, dynamic> json) =>
      _$LanguageItemDtoFromJson(json);
}

@freezed
class ContactsDto with _$ContactsDto {
  const factory ContactsDto(
      {@ImageConvertor() String? icon,
      String? name,
      String? contact,
      String? action}) = _ContactsDto;

  factory ContactsDto.fromJson(Map<String, dynamic> json) =>
      _$ContactsDtoFromJson(json);
}
