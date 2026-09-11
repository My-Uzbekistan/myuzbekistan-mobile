import 'search_city.dart';

class SearchCitiesBlock {
  final String title;
  final String? weekend;
  final List<SearchCity> items;

  const SearchCitiesBlock({
    required this.title,
    this.weekend,
    this.items = const [],
  });
}
