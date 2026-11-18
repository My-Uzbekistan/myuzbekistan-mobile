import 'delivery_method.dart';
import 'market_seller.dart';

class MarketProductDetail {
  final int id;
  final String? blockTitle;
  final String name;
  final List<String> photos;
  final int price;
  final int? oldPrice;
  final int soldThisMonth;
  final String description;
  final int available;
  final bool isFavorite;
  final int cartQuantity;
  final List<DeliveryMethod> delivery;
  final MarketSeller? seller;

  MarketProductDetail({
    required this.id,
    required this.name,
    required this.photos,
    required this.price,
    required this.soldThisMonth,
    required this.description,
    required this.available,
    required this.isFavorite,
    required this.cartQuantity,
    required this.delivery,
    this.blockTitle,
    this.oldPrice,
    this.seller,
  });

  bool get isAvailable => available > 0;

  MarketProductDetail copyWith({bool? isFavorite, int? cartQuantity}) =>
      MarketProductDetail(
        id: id,
        blockTitle: blockTitle,
        name: name,
        photos: photos,
        price: price,
        oldPrice: oldPrice,
        soldThisMonth: soldThisMonth,
        description: description,
        available: available,
        isFavorite: isFavorite ?? this.isFavorite,
        cartQuantity: cartQuantity ?? this.cartQuantity,
        delivery: delivery,
        seller: seller,
      );
}
