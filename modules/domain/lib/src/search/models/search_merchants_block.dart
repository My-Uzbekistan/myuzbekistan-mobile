import 'search_merchant.dart';

class SearchMerchantsBlock {
  final String title;
  final int totalItems;
  final List<SearchMerchant> items;

  const SearchMerchantsBlock({
    required this.title,
    this.totalItems = 0,
    this.items = const [],
  });
}
