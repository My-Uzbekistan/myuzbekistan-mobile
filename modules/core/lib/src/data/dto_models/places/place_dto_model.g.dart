// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_dto_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlaceCategoriesDtoImpl _$$PlaceCategoriesDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$PlaceCategoriesDtoImpl(
      categoryId: (json['categoryId'] as num).toInt(),
      categoryName: json['categoryName'] as String,
      contentView: (json['contentView'] as List<dynamic>?)
              ?.map((e) => PlaceDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$PlaceCategoriesDtoImplToJson(
        _$PlaceCategoriesDtoImpl instance) =>
    <String, dynamic>{
      'categoryId': instance.categoryId,
      'categoryName': instance.categoryName,
      'contentView': instance.contentView,
    };

_$PlaceDtoImpl _$$PlaceDtoImplFromJson(Map<String, dynamic> json) =>
    _$PlaceDtoImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String?,
      description: json['description'] as String?,
      categoryId: (json['categoryId'] as num?)?.toInt(),
      workingHours: json['workingHours'] as String?,
      ratingAverage: (json['ratingAverage'] as num?)?.toDouble(),
      price: (json['price'] as num?)?.toDouble(),
      priceInDollar: (json['priceInDollar'] as num?)?.toDouble(),
      address: json['address'] as String?,
      recommended: json['recommended'] as bool?,
      locale: json['locale'] as String?,
      image: json['image'] as String?,
      status: (json['status'] as num?)?.toInt(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$PlaceDtoImplToJson(_$PlaceDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'categoryId': instance.categoryId,
      'workingHours': instance.workingHours,
      'ratingAverage': instance.ratingAverage,
      'price': instance.price,
      'priceInDollar': instance.priceInDollar,
      'address': instance.address,
      'recommended': instance.recommended,
      'locale': instance.locale,
      'image': instance.image,
      'status': instance.status,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
