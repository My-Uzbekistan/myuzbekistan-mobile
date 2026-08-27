import 'museum_card.dart';

class MuseumList {
  final List<MuseumCard> items;
  final int page;
  final int totalItems;
  final int totalPages;
  final bool hasNext;

  MuseumList({
    required this.items,
    required this.page,
    required this.totalItems,
    required this.totalPages,
    required this.hasNext,
  });
}
