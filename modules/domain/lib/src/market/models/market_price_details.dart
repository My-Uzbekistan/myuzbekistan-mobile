import 'market_price_notice.dart';
import 'market_price_row.dart';

class MarketPriceDetails {
  final String title;
  final List<MarketPriceRow> rows;
  final MarketPriceRow? total;
  final MarketPriceNotice? notice;

  MarketPriceDetails({
    required this.title,
    required this.rows,
    this.total,
    this.notice,
  });
}
