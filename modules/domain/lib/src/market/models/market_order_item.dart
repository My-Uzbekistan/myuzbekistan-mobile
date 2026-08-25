class MarketOrderItem {
  final int productId;
  final String name;
  final String categoryName;
  final String photo;
  final double rating;
  final int price;
  final int quantity;

  MarketOrderItem({
    required this.productId,
    required this.name,
    required this.categoryName,
    required this.photo,
    required this.rating,
    required this.price,
    required this.quantity,
  });

  bool get hasRating => rating > 0;
}
