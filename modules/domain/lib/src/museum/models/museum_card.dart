class MuseumCard {
  final String id;
  final String title;
  final String city;
  final String image;
  final int priceFrom;
  final int? priceTo;
  final String currency;
  final String? address;
  final String? openingHours;
  final double? latitude;
  final double? longitude;
  final double? distanceKm;
  final double rating;
  final int reviewsCount;
  final bool isFavorite;

  MuseumCard({
    required this.id,
    required this.title,
    required this.city,
    required this.image,
    required this.priceFrom,
    required this.currency,
    required this.rating,
    required this.reviewsCount,
    required this.isFavorite,
    this.priceTo,
    this.address,
    this.openingHours,
    this.latitude,
    this.longitude,
    this.distanceKm,
  });

  MuseumCard copyWith({bool? isFavorite}) => MuseumCard(
    id: id,
    title: title,
    city: city,
    image: image,
    priceFrom: priceFrom,
    currency: currency,
    rating: rating,
    reviewsCount: reviewsCount,
    isFavorite: isFavorite ?? this.isFavorite,
    priceTo: priceTo,
    address: address,
    openingHours: openingHours,
    latitude: latitude,
    longitude: longitude,
    distanceKm: distanceKm,
  );
}
