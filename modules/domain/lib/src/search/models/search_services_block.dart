import 'search_service.dart';

class SearchServicesBlock {
  final String title;
  final int totalItems;
  final List<SearchService> items;

  const SearchServicesBlock({
    required this.title,
    this.totalItems = 0,
    this.items = const [],
  });
}
