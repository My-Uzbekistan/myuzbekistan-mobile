// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content_dto_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ContentCategoriesDto _$ContentCategoriesDtoFromJson(
  Map<String, dynamic> json,
) => _ContentCategoriesDto(
  categoryId: (json['categoryId'] as num).toInt(),
  categoryName: json['categoryName'] as String,
  viewType: (json['viewType'] as num?)?.toInt() ?? 0,
  recommended:
      json['recommended'] == null
          ? null
          : MainPageContentDto.fromJson(
            json['recommended'] as Map<String, dynamic>,
          ),
  contents:
      (json['contents'] as List<dynamic>?)
          ?.map((e) => MainPageContentDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$ContentCategoriesDtoToJson(
  _ContentCategoriesDto instance,
) => <String, dynamic>{
  'categoryId': instance.categoryId,
  'categoryName': instance.categoryName,
  'viewType': instance.viewType,
  'recommended': instance.recommended,
  'contents': instance.contents,
};

_TemperatureDto _$TemperatureDtoFromJson(Map<String, dynamic> json) =>
    _TemperatureDto(
      temperature: json['temperature'] as String?,
      condition: json['condition'] as String?,
      iconUrl: json['iconUrl'] as String?,
    );

Map<String, dynamic> _$TemperatureDtoToJson(_TemperatureDto instance) =>
    <String, dynamic>{
      'temperature': instance.temperature,
      'condition': instance.condition,
      'iconUrl': instance.iconUrl,
    };

_MainPageContentDto _$MainPageContentDtoFromJson(Map<String, dynamic> json) =>
    _MainPageContentDto(
      contentId: (json['contentId'] as num).toInt(),
      title: json['title'] as String?,
      caption: json['caption'] as String?,
      photos:
          json['photos'] == null
              ? const []
              : const ImageArrayConvertor().fromJson(json['photos'] as List?),
      photo: const ImageConvertor().fromJson(json['photo'] as String?),
      region: json['region'] as String?,
      address: json['address'] as String?,
      distance: (json['distance'] as num?)?.toDouble(),
      reviewCount: (json['reviewCount'] as num?)?.toInt(),
      facilities:
          (json['facilities'] as List<dynamic>?)
              ?.map((e) => FacilityItemDto.fromJson(e as Map<String, dynamic>))
              .toList(),
      languages:
          (json['languages'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
      ratingAverage: (json['ratingAverage'] as num?)?.toDouble(),
      averageCheck: (json['averageCheck'] as num?)?.toInt(),
      price: (json['price'] as num?)?.toDouble(),
      priceInDollar: (json['priceInDollar'] as num?)?.toDouble(),
      isFavorite: json['isFavorite'] as bool?,
      viewType:
          json['viewType'] == null
              ? ViewType.places
              : const ViewTypeConvertor().fromJson(
                (json['viewType'] as num?)?.toInt(),
              ),
    );

Map<String, dynamic> _$MainPageContentDtoToJson(_MainPageContentDto instance) =>
    <String, dynamic>{
      'contentId': instance.contentId,
      'title': instance.title,
      'caption': instance.caption,
      'photos': const ImageArrayConvertor().toJson(instance.photos),
      'photo': const ImageConvertor().toJson(instance.photo),
      'region': instance.region,
      'address': instance.address,
      'distance': instance.distance,
      'reviewCount': instance.reviewCount,
      'facilities': instance.facilities,
      'languages': instance.languages,
      'ratingAverage': instance.ratingAverage,
      'averageCheck': instance.averageCheck,
      'price': instance.price,
      'priceInDollar': instance.priceInDollar,
      'isFavorite': instance.isFavorite,
      'viewType': const ViewTypeConvertor().toJson(instance.viewType),
    };
