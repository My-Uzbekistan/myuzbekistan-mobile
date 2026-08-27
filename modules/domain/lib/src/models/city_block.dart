import '../../domain.dart';

class CityBlock {
  final int categoryId;
  final String title;
  final List<MainPageContent> items;

  const CityBlock({
    required this.categoryId,
    required this.title,
    this.items = const [],
  });
}
