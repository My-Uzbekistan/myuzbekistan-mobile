import 'package:data/src/utils/convertors/view_type_convertor.dart';
import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

import '../../../utils/convertors/image_convertor.dart';

part '../field/field_dto.dart';

part 'content_dto.freezed.dart';

part 'content_dto.g.dart';

@freezed
abstract class ContentDto with _$ContentDto {
  const ContentDto._();

  const factory ContentDto({
    required int id,
    String? title,
    String? shortDescription,
    String? description,
    int? categoryId,
    String? categoryName,
    bool? isFavorite,
    String? workingHours,
    List<WorkingScheduleDto>? workingSchedule,
    List<double>? location,
    List<FacilityItemDto>? facilities,
    List<FacilityGroupDto>? facilityGroups,
    List<String>? languages,
    List<AttachmentsItemDto>? attachments,
    @ImageArrayConvertor() List<String>? photos,
    @ImageConvertor() String? photo,
    List<ContactsDto>? contacts,
    double? ratingAverage,
    int? averageCheck,
    double? price,
    double? priceInDollar,
    String? priceUnit,
    DateTime? eventDate,
    String? eventType,
    String? address,
    String? region,
    double? distance,
    @JsonKey(name: 'distanse') int? distanse,
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
      shortDescription: shortDescription,
      description: description,
      categoryId: categoryId,
      categoryName: categoryName,
      photo: photo,
      photos: photos,
      ratingAverage: ratingAverage,
      averageCheck: averageCheck,
      price: price,
      priceInDollar: priceInDollar,
      priceUnit: priceUnit,
      eventDate: eventDate,
      eventType: eventType,
      viewType: viewType,
      address: address,
      languages: languages,
      facilities: facilities
          ?.map((e) => Facility(id: e.id, name: e.name, icon: e.icon))
          .toList(),
      facilityGroups: facilityGroups?.map((e) => e.toDomain()).toList(),
      attachments: attachments
          ?.map((e) => Attachments(name: e.name, icon: e.icon, file: e.files))
          .toList(),
      workingHours: workingHours,
      workingSchedule: workingSchedule?.map((e) => e.toDomain()).toList(),
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
      distance: distanse?.toDouble() ?? distance,
      info: info != null && info!.items.isNotEmpty
          ? DetailInfo(
              items: info!.items
                  .map(
                    (e) => InfoItem(
                      slug: InfoSlug.values.firstOrNullWhere(
                        (s) => s.name == e.slug,
                      ),
                      key: e.key,
                      value: e.value,
                      type: InfoType.values.firstWhere(
                        (t) => t.name == e.type,
                        orElse: () => InfoType.text,
                      ),
                      state: e.state == null
                          ? null
                          : InfoState.values.firstOrNullWhere(
                              (s) => s.name == e.state,
                            ),
                    ),
                  )
                  .toList(),
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
abstract class FacilityGroupDto with _$FacilityGroupDto {
  const FacilityGroupDto._();

  const factory FacilityGroupDto({
    String? name,
    @Default([]) List<FacilityItemDto> facilities,
  }) = _FacilityGroupDto;

  factory FacilityGroupDto.fromJson(Map<String, dynamic> json) =>
      _$FacilityGroupDtoFromJson(json);

  FacilityGroup toDomain() {
    return FacilityGroup(
      name: name ?? "",
      facilities: facilities
          .map((e) => Facility(id: e.id, name: e.name, icon: e.icon))
          .toList(),
    );
  }
}

@freezed
abstract class WorkingScheduleDto with _$WorkingScheduleDto {
  const WorkingScheduleDto._();

  const factory WorkingScheduleDto({
    @Default(0) int day,
    String? name,
    @Default(false) bool isClosed,
    String? from,
    String? to,
  }) = _WorkingScheduleDto;

  factory WorkingScheduleDto.fromJson(Map<String, dynamic> json) =>
      _$WorkingScheduleDtoFromJson(json);

  WorkingScheduleDay toDomain() {
    return WorkingScheduleDay(
      day: day,
      name: name ?? "",
      isClosed: isClosed,
      from: from,
      to: to,
    );
  }
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

@freezed
abstract class InfoDto with _$InfoDto {
  const factory InfoDto({@Default([]) List<InfoItemDto> items}) = _InfoDto;

  factory InfoDto.fromJson(Map<String, dynamic> json) =>
      _$InfoDtoFromJson(json);
}

@freezed
abstract class InfoItemDto with _$InfoItemDto {
  const factory InfoItemDto({
    String? slug,
    @Default("") String key,
    String? value,
    String? type,
    String? state,
  }) = _InfoItemDto;

  factory InfoItemDto.fromJson(Map<String, dynamic> json) =>
      _$InfoItemDtoFromJson(json);
}
