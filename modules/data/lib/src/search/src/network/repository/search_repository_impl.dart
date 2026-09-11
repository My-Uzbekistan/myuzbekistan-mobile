import 'package:data/src/search/src/network/api/search_api_service.dart';
import 'package:data/src/utils/generic/generics.dart';
import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

@Injectable(as: SearchRepository)
class SearchRepositoryImpl extends SearchRepository {
  final SearchApiService service;

  SearchRepositoryImpl(this.service);

  @override
  Future<SearchResult> search({
    required String query,
    int? limit,
    double? latitude,
    double? longitude,
  }) {
    return service
        .search(query: query, limit: limit, lat: latitude, lon: longitude)
        .call((data) => data.toDomain());
  }

  @override
  Future<List<SearchSuggestion>> suggestions({
    required String query,
    int? limit,
  }) {
    return service
        .suggestions(query: query, limit: limit)
        .call((items) => items.map((e) => e.toDomain()).toList());
  }

  @override
  Future<List<String>> popular({int? limit}) {
    return service.popular(limit: limit).call((items) => items);
  }

  @override
  Future<List<SearchHistoryItem>> history({int? limit}) {
    return service
        .history(limit: limit)
        .call((items) => items.map((e) => e.toDomain()).toList());
  }

  @override
  Future<dynamic> clearHistory() => service.clearHistory().call();

  @override
  Future<dynamic> deleteHistory({required int historyId}) =>
      service.deleteHistory(historyId).call();
}
