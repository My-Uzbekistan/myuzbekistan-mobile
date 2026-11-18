import 'museum_review.dart';

class MuseumReviews {
  final double rating;
  final int count;
  final int page;
  final int pageSize;
  final bool canReview;
  final Map<int, int> counts;
  final MuseumReview? mine;
  final List<MuseumReview> items;

  MuseumReviews({
    required this.rating,
    required this.count,
    required this.page,
    required this.pageSize,
    required this.canReview,
    required this.counts,
    required this.items,
    this.mine,
  });
}
