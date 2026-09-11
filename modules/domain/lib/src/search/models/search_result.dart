import 'search_cities_block.dart';
import 'search_group.dart';
import 'search_merchants_block.dart';
import 'search_services_block.dart';

class SearchResult {
  final String query;
  final int totalItems;
  final SearchCitiesBlock? cities;
  final SearchServicesBlock? services;
  final SearchMerchantsBlock? merchants;
  final List<SearchGroup> groups;

  const SearchResult({
    this.query = "",
    this.totalItems = 0,
    this.cities,
    this.services,
    this.merchants,
    this.groups = const [],
  });

  bool get isEmpty =>
      cities == null && services == null && merchants == null && groups.isEmpty;
}
