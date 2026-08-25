import 'market_category.dart';
import 'market_product.dart';

class MarketProductList {
  final MarketCategory? category;
  final List<MarketProduct> items;
  final int totalItems;

  MarketProductList({
    required this.items,
    required this.totalItems,
    this.category,
  });
}
