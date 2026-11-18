// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'museum_card_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MuseumCardDto _$MuseumCardDtoFromJson(Map<String, dynamic> json) =>
    MuseumCardDto(
      id: json['id'] as String,
      title: json['title'] as String?,
      city: json['city'] as String?,
      image: json['image'] as String?,
      priceFrom: (json['priceFrom'] as num?)?.toInt(),
      priceTo: (json['priceTo'] as num?)?.toInt(),
      currency: json['currency'] as String?,
      address: json['address'] as String?,
      openingHours: json['openingHours'] as String?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      distanceKm: (json['distanceKm'] as num?)?.toDouble(),
      rating: (json['rating'] as num?)?.toDouble(),
      reviewsCount: (json['reviewsCount'] as num?)?.toInt(),
      isFavorite: json['isFavorite'] as bool?,
    );

Map<String, dynamic> _$MuseumCardDtoToJson(MuseumCardDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'city': instance.city,
      'image': instance.image,
      'priceFrom': instance.priceFrom,
      'priceTo': instance.priceTo,
      'currency': instance.currency,
      'address': instance.address,
      'openingHours': instance.openingHours,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'distanceKm': instance.distanceKm,
      'rating': instance.rating,
      'reviewsCount': instance.reviewsCount,
      'isFavorite': instance.isFavorite,
    };
