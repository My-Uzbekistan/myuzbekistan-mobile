import 'package:core/src/domain/models/content_detail.dart';
import 'package:core/src/shared/view_type.dart';

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

class MainPageContent {
  int contentId;
  String? title;
  String? caption;
  List<String> photos;
  String? photo;
  String? region;
  String? address;
  List<Facility> facilities;
  List<String> languages;
  double? ratingAverage;
  int? averageCheck;
  double? price;
  double? priceInDollar;
  ViewType viewType;
  bool isFavorite;

  MainPageContent({
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
  });

  String? get mainPhoto => photo ?? photos.firstOrNull;

  String? get contentAddress => address ?? region;

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
      photos: photos ?? List.from(this.photos), // Ro'yxat nusxasi olinadi
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
}

