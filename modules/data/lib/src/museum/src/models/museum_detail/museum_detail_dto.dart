import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'museum_detail_dto.g.dart';

@JsonSerializable()
class MuseumDetailDto {
  final String id;
  final String? title;
  final String? description;
  final List<String>? media;
  final String? city;
  final double? latitude;
  final double? longitude;
  final String? phone;
  final String? address;
  final String? openingHours;
  final double? distanceKm;
  final double? rating;
  final int? reviewsCount;
  final bool? isFavorite;
  final int? priceFrom;
  final String? currency;

  MuseumDetailDto({
    required this.id,
    this.title,
    this.description,
    this.media,
    this.city,
    this.latitude,
    this.longitude,
    this.phone,
    this.address,
    this.openingHours,
    this.distanceKm,
    this.rating,
    this.reviewsCount,
    this.isFavorite,
    this.priceFrom,
    this.currency,
  });

  factory MuseumDetailDto.fromJson(Map<String, dynamic> json) =>
      _$MuseumDetailDtoFromJson(json);

  MuseumDetail toDomain() => MuseumDetail(
    id: id,
    title: title ?? "",
    description: description ?? "",
    media: media ?? const [],
    city: city ?? "",
    latitude: latitude,
    longitude: longitude,
    phone: phone,
    address: address,
    openingHours: openingHours,
    distanceKm: distanceKm,
    rating: rating ?? 0,
    reviewsCount: reviewsCount ?? 0,
    isFavorite: isFavorite ?? false,
    priceFrom: priceFrom ?? 0,
    currency: currency ?? "",
  );
}
