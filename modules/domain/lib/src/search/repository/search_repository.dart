import '../models/search_history_item.dart';
import '../models/search_result.dart';
import '../models/search_suggestion.dart';

abstract class SearchRepository {
  Future<SearchResult> search({
    required String query,
    int? limit,
    double? latitude,
    double? longitude,
  });

  Future<List<SearchSuggestion>> suggestions({
    required String query,
    int? limit,
  });

  Future<List<String>> popular({int? limit});

  Future<List<SearchHistoryItem>> history({int? limit});

  Future<dynamic> clearHistory();

  Future<dynamic> deleteHistory({required int historyId});
}
