// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FieldDto<T> _$FieldDtoFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    FieldDto<T>(
      name: json['name'] as String?,
      value: _$nullableGenericFromJson(json['value'], fromJsonT),
    );

Map<String, dynamic> _$FieldDtoToJson<T>(
  FieldDto<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'name': instance.name,
      'value': _$nullableGenericToJson(instance.value, toJsonT),
    };

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) =>
    input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) =>
    input == null ? null : toJson(input);

_$ContentDtoImpl _$$ContentDtoImplFromJson(Map<String, dynamic> json) =>
    _$ContentDtoImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String?,
      description: json['description'] as String?,
      categoryId: (json['categoryId'] as num?)?.toInt(),
      categoryName: json['categoryName'] as String?,
      isFavorite: json['isFavorite'] as bool?,
      workingHours: json['workingHours'] == null
          ? null
          : FieldDto<String?>.fromJson(
              json['workingHours'] as Map<String, dynamic>,
              (value) => value as String?),
      location: json['location'] == null
          ? null
          : FieldDto<List<double>>.fromJson(
              json['location'] as Map<String, dynamic>,
              (value) => (value as List<dynamic>)
                  .map((e) => (e as num).toDouble())
                  .toList()),
      facilities: json['facilities'] == null
          ? null
          : FieldDto<List<FacilityItemDto>>.fromJson(
              json['facilities'] as Map<String, dynamic>,
              (value) => (value as List<dynamic>)
                  .map((e) =>
                      FacilityItemDto.fromJson(e as Map<String, dynamic>))
                  .toList()),
      languages: json['languages'] == null
          ? null
          : FieldDto<List<String>>.fromJson(
              json['languages'] as Map<String, dynamic>,
              (value) =>
                  (value as List<dynamic>).map((e) => e as String).toList()),
      attachments: json['attachments'] == null
          ? null
          : FieldDto<List<AttachmentsItemDto>>.fromJson(
              json['attachments'] as Map<String, dynamic>,
              (value) => (value as List<dynamic>)
                  .map((e) =>
                      AttachmentsItemDto.fromJson(e as Map<String, dynamic>))
                  .toList()),
      photos: const ImageArrayConvertor().fromJson(json['photos'] as List?),
      photo: const ImageConvertor().fromJson(json['photo'] as String?),
      contacts: json['contacts'] == null
          ? null
          : FieldDto<List<ContactsDto>>.fromJson(
              json['contacts'] as Map<String, dynamic>,
              (value) => (value as List<dynamic>)
                  .map((e) => ContactsDto.fromJson(e as Map<String, dynamic>))
                  .toList()),
      ratingAverage: (json['ratingAverage'] as num?)?.toDouble(),
      averageCheck: (json['averageCheck'] as num?)?.toInt(),
      price: (json['price'] as num?)?.toDouble(),
      priceInDollar: (json['priceInDollar'] as num?)?.toDouble(),
      address: json['address'] as String?,
      viewType: json['viewType'] == null
          ? ViewType.places
          : const ViewTypeConvertor()
              .fromJson((json['viewType'] as num?)?.toInt()),
    );

Map<String, dynamic> _$$ContentDtoImplToJson(_$ContentDtoImpl instance) =>
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
          instance.photos, const ImageArrayConvertor().toJson),
      'photo': const ImageConvertor().toJson(instance.photo),
      'contacts': instance.contacts,
      'ratingAverage': instance.ratingAverage,
      'averageCheck': instance.averageCheck,
      'price': instance.price,
      'priceInDollar': instance.priceInDollar,
      'address': instance.address,
      'viewType': const ViewTypeConvertor().toJson(instance.viewType),
    };

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);

_$FacilityItemDtoImpl _$$FacilityItemDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$FacilityItemDtoImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      icon: const ImageConvertor().fromJson(json['icon'] as String?),
    );

Map<String, dynamic> _$$FacilityItemDtoImplToJson(
        _$FacilityItemDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'icon': const ImageConvertor().toJson(instance.icon),
    };

_$AttachmentsItemDtoImpl _$$AttachmentsItemDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$AttachmentsItemDtoImpl(
      icon: const ImageConvertor().fromJson(json['icon'] as String?),
      name: json['name'] as String?,
      files: const ImageConvertor().fromJson(json['files'] as String?),
    );

Map<String, dynamic> _$$AttachmentsItemDtoImplToJson(
        _$AttachmentsItemDtoImpl instance) =>
    <String, dynamic>{
      'icon': const ImageConvertor().toJson(instance.icon),
      'name': instance.name,
      'files': const ImageConvertor().toJson(instance.files),
    };

_$LanguageItemDtoImpl _$$LanguageItemDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$LanguageItemDtoImpl(
      id: FieldDto<String?>.fromJson(
          json['id'] as Map<String, dynamic>, (value) => value as String?),
      name: FieldDto<String?>.fromJson(
          json['name'] as Map<String, dynamic>, (value) => value as String?),
    );

Map<String, dynamic> _$$LanguageItemDtoImplToJson(
        _$LanguageItemDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$ContactsDtoImpl _$$ContactsDtoImplFromJson(Map<String, dynamic> json) =>
    _$ContactsDtoImpl(
      icon: json['icon'] as String?,
      name: json['name'] as String?,
      contact: json['contact'] as String?,
      action: json['action'] as String?,
    );

Map<String, dynamic> _$$ContactsDtoImplToJson(_$ContactsDtoImpl instance) =>
    <String, dynamic>{
      'icon': instance.icon,
      'name': instance.name,
      'contact': instance.contact,
      'action': instance.action,
    };
