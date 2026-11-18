import 'market_block.dart';
import 'market_category.dart';
import 'market_city.dart';

class MarketHome {
  final MarketCity? city;
  final List<MarketCategory> categories;
  final List<MarketBlock> blocks;

  MarketHome({
    required this.categories,
    required this.blocks,
    this.city,
  });
}
