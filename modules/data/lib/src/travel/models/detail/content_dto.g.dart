// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FieldDto<T> _$FieldDtoFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) => FieldDto<T>(
  name: json['name'] as String?,
  value: _$nullableGenericFromJson(json['value'], fromJsonT),
);

Map<String, dynamic> _$FieldDtoToJson<T>(
  FieldDto<T> instance,
  Object? Function(T value) toJsonT,
) => <String, dynamic>{
  'name': instance.name,
  'value': _$nullableGenericToJson(instance.value, toJsonT),
};

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) => input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) => input == null ? null : toJson(input);

_ContentDto _$ContentDtoFromJson(Map<String, dynamic> json) => _ContentDto(
  id: (json['id'] as num).toInt(),
  title: json['title'] as String?,
  shortDescription: json['shortDescription'] as String?,
  description: json['description'] as String?,
  categoryId: (json['categoryId'] as num?)?.toInt(),
  categoryName: json['categoryName'] as String?,
  isFavorite: json['isFavorite'] as bool?,
  workingHours: json['workingHours'] as String?,
  workingSchedule: (json['workingSchedule'] as List<dynamic>?)
      ?.map((e) => WorkingScheduleDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  location: (json['location'] as List<dynamic>?)
      ?.map((e) => (e as num).toDouble())
      .toList(),
  facilities: (json['facilities'] as List<dynamic>?)
      ?.map((e) => FacilityItemDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  facilityGroups: (json['facilityGroups'] as List<dynamic>?)
      ?.map((e) => FacilityGroupDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  languages: (json['languages'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  attachments: (json['attachments'] as List<dynamic>?)
      ?.map((e) => AttachmentsItemDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  photos: const ImageArrayConvertor().fromJson(json['photos'] as List?),
  photo: const ImageConvertor().fromJson(json['photo'] as String?),
  contacts: (json['contacts'] as List<dynamic>?)
      ?.map((e) => ContactsDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  ratingAverage: (json['ratingAverage'] as num?)?.toDouble(),
  averageCheck: (json['averageCheck'] as num?)?.toInt(),
  price: (json['price'] as num?)?.toDouble(),
  priceInDollar: (json['priceInDollar'] as num?)?.toDouble(),
  priceUnit: json['priceUnit'] as String?,
  eventDate: json['eventDate'] == null
      ? null
      : DateTime.parse(json['eventDate'] as String),
  eventType: json['eventType'] as String?,
  address: json['address'] as String?,
  region: json['region'] as String?,
  distance: (json['distance'] as num?)?.toDouble(),
  distanse: (json['distanse'] as num?)?.toInt(),
  reviewCount: (json['reviewCount'] as num?)?.toInt(),
  info: json['info'] == null
      ? null
      : InfoDto.fromJson(json['info'] as Map<String, dynamic>),
  viewType: json['viewType'] == null
      ? ViewType.places
      : const ViewTypeConvertor().fromJson((json['viewType'] as num?)?.toInt()),
);

Map<String, dynamic> _$ContentDtoToJson(_ContentDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'shortDescription': instance.shortDescription,
      'description': instance.description,
      'categoryId': instance.categoryId,
      'categoryName': instance.categoryName,
      'isFavorite': instance.isFavorite,
      'workingHours': instance.workingHours,
      'workingSchedule': instance.workingSchedule,
      'location': instance.location,
      'facilities': instance.facilities,
      'facilityGroups': instance.facilityGroups,
      'languages': instance.languages,
      'attachments': instance.attachments,
      'photos': _$JsonConverterToJson<List<dynamic>?, List<String>>(
        instance.photos,
        const ImageArrayConvertor().toJson,
      ),
      'photo': const ImageConvertor().toJson(instance.photo),
      'contacts': instance.contacts,
      'ratingAverage': instance.ratingAverage,
      'averageCheck': instance.averageCheck,
      'price': instance.price,
      'priceInDollar': instance.priceInDollar,
      'priceUnit': instance.priceUnit,
      'eventDate': instance.eventDate?.toIso8601String(),
      'eventType': instance.eventType,
      'address': instance.address,
      'region': instance.region,
      'distance': instance.distance,
      'distanse': instance.distanse,
      'reviewCount': instance.reviewCount,
      'info': instance.info,
      'viewType': const ViewTypeConvertor().toJson(instance.viewType),
    };

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);

_FacilityItemDto _$FacilityItemDtoFromJson(Map<String, dynamic> json) =>
    _FacilityItemDto(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      icon: const ImageConvertor().fromJson(json['icon'] as String?),
    );

Map<String, dynamic> _$FacilityItemDtoToJson(_FacilityItemDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'icon': const ImageConvertor().toJson(instance.icon),
    };

_FacilityGroupDto _$FacilityGroupDtoFromJson(Map<String, dynamic> json) =>
    _FacilityGroupDto(
      name: json['name'] as String?,
      facilities:
          (json['facilities'] as List<dynamic>?)
              ?.map((e) => FacilityItemDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$FacilityGroupDtoToJson(_FacilityGroupDto instance) =>
    <String, dynamic>{'name': instance.name, 'facilities': instance.facilities};

_WorkingScheduleDto _$WorkingScheduleDtoFromJson(Map<String, dynamic> json) =>
    _WorkingScheduleDto(
      day: (json['day'] as num?)?.toInt() ?? 0,
      name: json['name'] as String?,
      isClosed: json['isClosed'] as bool? ?? false,
      from: json['from'] as String?,
      to: json['to'] as String?,
    );

Map<String, dynamic> _$WorkingScheduleDtoToJson(_WorkingScheduleDto instance) =>
    <String, dynamic>{
      'day': instance.day,
      'name': instance.name,
      'isClosed': instance.isClosed,
      'from': instance.from,
      'to': instance.to,
    };

_AttachmentsItemDto _$AttachmentsItemDtoFromJson(Map<String, dynamic> json) =>
    _AttachmentsItemDto(
      icon: const ImageConvertor().fromJson(json['icon'] as String?),
      name: json['name'] as String?,
      files: const ImageConvertor().fromJson(json['files'] as String?),
    );

Map<String, dynamic> _$AttachmentsItemDtoToJson(_AttachmentsItemDto instance) =>
    <String, dynamic>{
      'icon': const ImageConvertor().toJson(instance.icon),
      'name': instance.name,
      'files': const ImageConvertor().toJson(instance.files),
    };

_LanguageItemDto _$LanguageItemDtoFromJson(Map<String, dynamic> json) =>
    _LanguageItemDto(
      id: FieldDto<String?>.fromJson(
        json['id'] as Map<String, dynamic>,
        (value) => value as String?,
      ),
      name: FieldDto<String?>.fromJson(
        json['name'] as Map<String, dynamic>,
        (value) => value as String?,
      ),
    );

Map<String, dynamic> _$LanguageItemDtoToJson(_LanguageItemDto instance) =>
    <String, dynamic>{'id': instance.id, 'name': instance.name};

_ContactsDto _$ContactsDtoFromJson(Map<String, dynamic> json) => _ContactsDto(
  icon: const ImageConvertor().fromJson(json['icon'] as String?),
  name: json['name'] as String?,
  contact: json['contact'] as String?,
  action: json['action'] as String?,
);

Map<String, dynamic> _$ContactsDtoToJson(_ContactsDto instance) =>
    <String, dynamic>{
      'icon': const ImageConvertor().toJson(instance.icon),
      'name': instance.name,
      'contact': instance.contact,
      'action': instance.action,
    };

_InfoDto _$InfoDtoFromJson(Map<String, dynamic> json) => _InfoDto(
  items:
      (json['items'] as List<dynamic>?)
          ?.map((e) => InfoItemDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$InfoDtoToJson(_InfoDto instance) => <String, dynamic>{
  'items': instance.items,
};

_InfoItemDto _$InfoItemDtoFromJson(Map<String, dynamic> json) => _InfoItemDto(
  slug: json['slug'] as String?,
  key: json['key'] as String? ?? "",
  value: json['value'] as String?,
  type: json['type'] as String?,
  state: json['state'] as String?,
);

Map<String, dynamic> _$InfoItemDtoToJson(_InfoItemDto instance) =>
    <String, dynamic>{
      'slug': instance.slug,
      'key': instance.key,
      'value': instance.value,
      'type': instance.type,
      'state': instance.state,
    };
