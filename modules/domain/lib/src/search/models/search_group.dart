import '../../models/place_model.dart';

class SearchGroup {
  final int categoryId;
  final String title;
  final int totalItems;
  final String? deeplink;
  final List<MainPageContent> items;

  const SearchGroup({
    required this.categoryId,
    required this.title,
    this.totalItems = 0,
    this.deeplink,
    this.items = const [],
  });
}
