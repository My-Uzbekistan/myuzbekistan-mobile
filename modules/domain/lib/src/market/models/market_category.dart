class MarketCategory {
  final int id;
  final String name;
  final String? photo;
  final int productCount;

  MarketCategory({
    required this.id,
    required this.name,
    required this.productCount,
    this.photo,
  });
}
