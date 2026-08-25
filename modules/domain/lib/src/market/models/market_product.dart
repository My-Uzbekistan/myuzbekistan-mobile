class MarketProduct {
  final int id;
  final String name;
  final List<String> photos;
  final int price;
  final int? oldPrice;
  final bool isFavorite;
  final int cartQuantity;
  final String? sellerName;

  MarketProduct({
    required this.id,
    required this.name,
    required this.photos,
    required this.price,
    required this.isFavorite,
    required this.cartQuantity,
    this.oldPrice,
    this.sellerName,
  });

  MarketProduct copyWith({bool? isFavorite, int? cartQuantity}) => MarketProduct(
    id: id,
    name: name,
    photos: photos,
    price: price,
    oldPrice: oldPrice,
    isFavorite: isFavorite ?? this.isFavorite,
    cartQuantity: cartQuantity ?? this.cartQuantity,
    sellerName: sellerName,
  );
}
