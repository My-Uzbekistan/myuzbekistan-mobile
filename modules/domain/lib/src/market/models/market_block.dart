import 'market_product.dart';

class MarketBlock {
  final String key;
  final String title;
  final List<MarketProduct> products;

  MarketBlock({
    required this.key,
    required this.title,
    required this.products,
  });

  MarketBlock copyWith({List<MarketProduct>? products}) => MarketBlock(
    key: key,
    title: title,
    products: products ?? this.products,
  );
}
