import 'search_suggestion_type.dart';

class SearchSuggestion {
  final SearchSuggestionType type;
  final int id;
  final String title;

  const SearchSuggestion({
    required this.type,
    required this.id,
    required this.title,
  });
}
