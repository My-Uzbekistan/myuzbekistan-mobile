import 'package:shared/shared.dart';

import '../../domain.dart';

// "temperature": "27.3 °C",
// "condition": "Переменная облачность",
// "iconUrl": "//cdn.weatherapi.com/weather/64x64/day/116.png"
class Temperature {
  final String? temperature;
  final String? condition;
  final String? iconUrl;

  Temperature({
    required this.temperature,
    required this.condition,
    required this.iconUrl,
  });
}

class ContentCategories {
  final int categoryId; // Only 'id' is required
  final String categoryName;
  final MainPageContent? recommended;
  final ViewType viewType;
  final List<MainPageContent> contents;

  const ContentCategories({
    required this.categoryId, // Only 'id' is required
    required this.categoryName,
    required this.recommended,
    required this.viewType,
    required this.contents,
  });
}

@immutable
class MainPageContent extends Equatable {
  final int contentId;
  final String? title;
  final String? caption;
  final List<String> photos;
  final String? photo;
  final String? region;
  final String? address;
  final List<Facility> facilities;
  final List<String> languages;
  final double? ratingAverage;
  final double? distance;
  final int? reviewCount;
  final int? averageCheck;
  final double? price;
  final double? priceInDollar;
  final ViewType viewType;
  final bool isFavorite;

  const MainPageContent({
    required this.contentId,
    required this.photos,
    required this.viewType,
    this.title,
    this.caption,
    this.region,
    this.address,
    this.averageCheck,
    this.ratingAverage,
    this.facilities = const [],
    this.languages = const [],
    this.photo,
    this.price,
    this.priceInDollar,
    this.isFavorite = false,
    this.distance,
    this.reviewCount,
  });

  ContentDetail toContentDetail({String? categoryName}) {
    return ContentDetail(
      id: contentId,
      viewType: viewType,
      title: title,
      region: region,
      address: address,
      averageCheck: averageCheck,
      ratingAverage: ratingAverage,
      facilities: facilities,
      languages: languages,
      photo: photo,
      photos: photos,
      price: price,
      priceInDollar: priceInDollar,
      isFavorite: isFavorite,
      distance: distance,
      reviewCount: reviewCount,
      categoryName:categoryName
    );
  }

  String? get mainPhoto => photo ?? photos.firstOrNull;

  String? get contentAddress => (address ?? region);

  double? get distanceKm => distance != null ? distance! / 1000 : null;

  /// **copyWith funksiyasi**
  MainPageContent copyWith({
    int? contentId,
    String? title,
    String? caption,
    List<String>? photos,
    String? photo,
    String? region,
    String? address,
    List<Facility>? facilities,
    List<String>? languages,
    double? ratingAverage,
    int? averageCheck,
    double? price,
    double? priceInDollar,
    ViewType? viewType,
    bool? isFavorite,
  }) {
    return MainPageContent(
      contentId: contentId ?? this.contentId,
      title: title ?? this.title,
      caption: caption ?? this.caption,
      photos: photos ?? List.from(this.photos),
      // Ro'yxat nusxasi olinadi
      photo: photo ?? this.photo,
      region: region ?? this.region,
      address: address ?? this.address,
      facilities: facilities ?? List.from(this.facilities),
      languages: languages ?? List.from(this.languages),
      ratingAverage: ratingAverage ?? this.ratingAverage,
      averageCheck: averageCheck ?? this.averageCheck,
      price: price ?? this.price,
      priceInDollar: priceInDollar ?? this.priceInDollar,
      viewType: viewType ?? this.viewType,
      isFavorite: isFavorite ?? this.isFavorite,
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [contentId, title, isFavorite];
}
