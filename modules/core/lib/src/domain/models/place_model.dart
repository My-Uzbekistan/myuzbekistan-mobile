
class PlaceCategories {
  final int categoryId; // Only 'id' is required
  final String categoryName;
  final List<Place> contentView;
  const PlaceCategories({
    required this.categoryId, // Only 'id' is required
    required this.categoryName,
    required this.contentView,
  });
}

class Place {
  final int id; // Only 'id' is required
  String? title;
  String? description;
  int? categoryId;
  String? workingHours;
  double? ratingAverage;
  double? price;
  double? priceInDollar;
  String? address;
  bool? recommended;
  String? locale;
  String? imageUrl;
  int? status;
  DateTime? createdAt;
  DateTime? updatedAt;

  Place({
    required this.id, // Only 'id' is required
    this.title,
    this.description,
    this.categoryId,
    this.workingHours,
    this.ratingAverage,
    this.price,
    this.priceInDollar,
    this.address,
    this.recommended,
    this.locale,
    this.imageUrl,
    this.status,
    this.createdAt,
    this.updatedAt,
  });
}
