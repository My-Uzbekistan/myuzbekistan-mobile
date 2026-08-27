// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'museum_detail_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MuseumDetailDto _$MuseumDetailDtoFromJson(Map<String, dynamic> json) =>
    MuseumDetailDto(
      id: json['id'] as String,
      title: json['title'] as String?,
      description: json['description'] as String?,
      media: (json['media'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      city: json['city'] as String?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      phone: json['phone'] as String?,
      address: json['address'] as String?,
      openingHours: json['openingHours'] as String?,
      distanceKm: (json['distanceKm'] as num?)?.toDouble(),
      rating: (json['rating'] as num?)?.toDouble(),
      reviewsCount: (json['reviewsCount'] as num?)?.toInt(),
      isFavorite: json['isFavorite'] as bool?,
      priceFrom: (json['priceFrom'] as num?)?.toInt(),
      currency: json['currency'] as String?,
    );

Map<String, dynamic> _$MuseumDetailDtoToJson(MuseumDetailDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'media': instance.media,
      'city': instance.city,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'phone': instance.phone,
      'address': instance.address,
      'openingHours': instance.openingHours,
      'distanceKm': instance.distanceKm,
      'rating': instance.rating,
      'reviewsCount': instance.reviewsCount,
      'isFavorite': instance.isFavorite,
      'priceFrom': instance.priceFrom,
      'currency': instance.currency,
    };
