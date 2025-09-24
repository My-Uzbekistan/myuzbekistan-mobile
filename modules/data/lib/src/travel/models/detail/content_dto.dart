import 'package:data/src/utils/convertors/view_type_convertor.dart';
import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

import '../../../utils/convertors/image_convertor.dart';

part 'field_dto.dart';

part 'content_dto.freezed.dart';

part 'content_dto.g.dart';

@freezed
abstract class ContentDto with _$ContentDto {
  const ContentDto._();

  const factory ContentDto({
    required int id,
    String? title,
    String? description,
    int? categoryId,
    String? categoryName,
    bool? isFavorite,
    String? workingHours,
    List<double>? location,
    List<FacilityItemDto>? facilities,
    List<String>? languages,
    List<AttachmentsItemDto>? attachments,
    @ImageArrayConvertor() List<String>? photos,
    @ImageConvertor() String? photo,
    List<ContactsDto>? contacts,
    double? ratingAverage,
    int? averageCheck,
    double? price,
    double? priceInDollar,
    String? address,
    String? region,
    double? distance,
    int? reviewCount,
    InfoDto? info,
    @Default(ViewType.places) @ViewTypeConvertor() ViewType viewType,
  }) = _ContentDto;

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
      ratingAverage: ratingAverage,
      averageCheck: averageCheck,
      price: price,
      priceInDollar: priceInDollar,
      viewType: viewType,
      address: address,
      languages: languages,
      facilities: facilities
          ?.map((e) => Facility(id: e.id, name: e.name, icon: e.icon))
          .toList(),
      attachments: attachments
          ?.map((e) => Attachments(name: e.name, icon: e.icon, file: e.files))
          .toList(),
      workingHours: workingHours,
      contacts: contacts
          ?.map(
            (e) => Contacts(
              name: e.name,
              icon: e.icon,
              contact: e.contact,
              action: e.action,
            ),
          )
          .toList(),
      location: location,
      isFavorite: isFavorite ?? false,
      region: region,
      reviewCount: reviewCount,
      distance: distance,
      info: info != null
          ? DetailInfo(
              left: InfoItem(
                key: info?.left?.key ?? "",
                value: info?.left?.value,
                type: info?.left?.type,
              ),
              right: InfoItem(
                key: info?.right?.key ?? "",
                value: info?.right?.value,
                type: info?.right?.type,
              ),
            )
          : null,
    );
  }
}

@freezed
abstract class FacilityItemDto with _$FacilityItemDto {
  const factory FacilityItemDto({
    required int id,
    required String name,
    @ImageConvertor() String? icon,
  }) = _FacilityItemDto;

  factory FacilityItemDto.fromJson(Map<String, dynamic> json) =>
      _$FacilityItemDtoFromJson(json);
}

@freezed
abstract class AttachmentsItemDto with _$AttachmentsItemDto {
  const factory AttachmentsItemDto({
    @ImageConvertor() String? icon,
    String? name,
    @ImageConvertor() String? files,
  }) = _AttachmentsItemDto;

  factory AttachmentsItemDto.fromJson(Map<String, dynamic> json) =>
      _$AttachmentsItemDtoFromJson(json);
}

@freezed
abstract class LanguageItemDto with _$LanguageItemDto {
  const factory LanguageItemDto({
    required FieldDto<String?> id,
    required FieldDto<String?> name,
  }) = _LanguageItemDto;

  factory LanguageItemDto.fromJson(Map<String, dynamic> json) =>
      _$LanguageItemDtoFromJson(json);
}

@freezed
abstract class ContactsDto with _$ContactsDto {
  const factory ContactsDto({
    @ImageConvertor() String? icon,
    String? name,
    String? contact,
    String? action,
  }) = _ContactsDto;

  factory ContactsDto.fromJson(Map<String, dynamic> json) =>
      _$ContactsDtoFromJson(json);
}

// {
// "info": {
// "left": {
// "key": "цена",
// "type":"text",
// "value": "=$628"
// },
// "right":{
// "key":"ценовая категория",
// "type":"dollarRating",
// "value":"3",
// "maxValue":"4"
// }
// }
// }

@freezed
abstract class InfoDto with _$InfoDto {
  const factory InfoDto({InfoItemDto? left, InfoItemDto? right}) = _InfoDto;

  factory InfoDto.fromJson(Map<String, dynamic> json) =>
      _$InfoDtoFromJson(json);
}

@freezed
abstract class InfoItemDto with _$InfoItemDto {
  const factory InfoItemDto({
    required String key,
    String? value,
    String? type,
  }) = _InfoItemDto;

  factory InfoItemDto.fromJson(Map<String, dynamic> json) =>
      _$InfoItemDtoFromJson(json);
}

// @Freezed(unionKey: 'type')
// abstract class InfoItemDto with _$InfoItemDto {
//   const InfoItemDto._();
//   const factory InfoItemDto.text({required String key, String? value}) =
//       InfoItemDtoText;
//
//   const factory InfoItemDto.distance({ double? distance}) =
//   InfoItemDtoDistance;
//   const factory InfoItemDto.dollarRating({
//     int? value,
//     int? maxValue,
//   }) = InfoItemDtoDollarRating;
//
//   const factory InfoItemDto.cost({
//     int? cost,
//   }) = InfoItemDtoApproximateCost;
//   const factory InfoItemDto.workTime({
//     String? start,
//     String? end,
//   }) = InfoItemDtoWorkTime;
//
//   factory InfoItemDto.fromJson(Map<String, dynamic> json) =>
//       _$InfoItemDtoFromJson(json);
//
//   InfoItem toDomain() {
//     return map(
//       text: (text) {
//         return InfoItem.text(key: text.key, value: text.value);
//       },
//       dollarRating: (rating) {
//         return InfoItem.dollarRating(
//           value: rating.value,
//         );
//       },
//       distance: (dis) {
//         return InfoItem.distance( distance: dis.distance);
//       },
//
//       cost: (cost) {
//         return InfoItem.approximateCost(cost: cost.cost);
//       },
//       workTime: (time) {
//         return InfoItem.workTime(start: time.start, end: time.end);
//       },
//     );
//   }
// }
