import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'museum_card_dto.g.dart';

@JsonSerializable()
class MuseumCardDto {
  final String id;
  final String? title;
  final String? city;
  final String? image;
  final int? priceFrom;
  final int? priceTo;
  final String? currency;
  final String? address;
  final String? openingHours;
  final double? latitude;
  final double? longitude;
  final double? distanceKm;
  final double? rating;
  final int? reviewsCount;
  final bool? isFavorite;

  MuseumCardDto({
    required this.id,
    this.title,
    this.city,
    this.image,
    this.priceFrom,
    this.priceTo,
    this.currency,
    this.address,
    this.openingHours,
    this.latitude,
    this.longitude,
    this.distanceKm,
    this.rating,
    this.reviewsCount,
    this.isFavorite,
  });

  factory MuseumCardDto.fromJson(Map<String, dynamic> json) =>
      _$MuseumCardDtoFromJson(json);

  MuseumCard toDomain() => MuseumCard(
    id: id,
    title: title ?? "",
    city: city ?? "",
    image: image ?? "",
    priceFrom: priceFrom ?? 0,
    priceTo: priceTo,
    currency: currency ?? "",
    address: address,
    openingHours: openingHours,
    latitude: latitude,
    longitude: longitude,
    distanceKm: distanceKm,
    rating: rating ?? 0,
    reviewsCount: reviewsCount ?? 0,
    isFavorite: isFavorite ?? false,
  );
}
