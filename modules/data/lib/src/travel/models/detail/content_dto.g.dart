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
  description: json['description'] as String?,
  categoryId: (json['categoryId'] as num?)?.toInt(),
  categoryName: json['categoryName'] as String?,
  isFavorite: json['isFavorite'] as bool?,
  workingHours: json['workingHours'] as String?,
  location: (json['location'] as List<dynamic>?)
      ?.map((e) => (e as num).toDouble())
      .toList(),
  facilities: (json['facilities'] as List<dynamic>?)
      ?.map((e) => FacilityItemDto.fromJson(e as Map<String, dynamic>))
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
  address: json['address'] as String?,
  region: json['region'] as String?,
  distance: (json['distance'] as num?)?.toDouble(),
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
      'description': instance.description,
      'categoryId': instance.categoryId,
      'categoryName': instance.categoryName,
      'isFavorite': instance.isFavorite,
      'workingHours': instance.workingHours,
      'location': instance.location,
      'facilities': instance.facilities,
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
      'address': instance.address,
      'region': instance.region,
      'distance': instance.distance,
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
  left: json['left'] == null
      ? null
      : InfoItemDto.fromJson(json['left'] as Map<String, dynamic>),
  right: json['right'] == null
      ? null
      : InfoItemDto.fromJson(json['right'] as Map<String, dynamic>),
);

Map<String, dynamic> _$InfoDtoToJson(_InfoDto instance) => <String, dynamic>{
  'left': instance.left,
  'right': instance.right,
};

_InfoItemDto _$InfoItemDtoFromJson(Map<String, dynamic> json) => _InfoItemDto(
  key: json['key'] as String,
  value: json['value'] as String?,
  type: json['type'] as String?,
);

Map<String, dynamic> _$InfoItemDtoToJson(_InfoItemDto instance) =>
    <String, dynamic>{
      'key': instance.key,
      'value': instance.value,
      'type': instance.type,
    };
