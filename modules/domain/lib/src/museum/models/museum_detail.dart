class MuseumDetail {
  final String id;
  final String title;
  final String description;
  final List<String> media;
  final String city;
  final double? latitude;
  final double? longitude;
  final String? phone;
  final String? address;
  final String? openingHours;
  final double? distanceKm;
  final double rating;
  final int reviewsCount;
  final bool isFavorite;
  final int priceFrom;
  final String currency;

  MuseumDetail({
    required this.id,
    required this.title,
    required this.description,
    required this.media,
    required this.city,
    required this.rating,
    required this.reviewsCount,
    required this.isFavorite,
    required this.priceFrom,
    required this.currency,
    this.latitude,
    this.longitude,
    this.phone,
    this.address,
    this.openingHours,
    this.distanceKm,
  });

  MuseumDetail copyWith({bool? isFavorite}) => MuseumDetail(
    id: id,
    title: title,
    description: description,
    media: media,
    city: city,
    rating: rating,
    reviewsCount: reviewsCount,
    isFavorite: isFavorite ?? this.isFavorite,
    priceFrom: priceFrom,
    currency: currency,
    latitude: latitude,
    longitude: longitude,
    phone: phone,
    address: address,
    openingHours: openingHours,
    distanceKm: distanceKm,
  );
}
