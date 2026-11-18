import 'package:data/src/museum/src/models/museum_review/museum_review_dto.dart';
import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'museum_reviews_dto.g.dart';

@JsonSerializable()
class MuseumReviewsDto {
  final double? rating;
  final int? count;
  final int? page;
  final int? pageSize;
  final bool? canReview;
  final Map<String, int>? counts;
  final MuseumReviewDto? mine;
  final List<MuseumReviewDto>? items;

  MuseumReviewsDto({
    this.rating,
    this.count,
    this.page,
    this.pageSize,
    this.canReview,
    this.counts,
    this.mine,
    this.items,
  });

  factory MuseumReviewsDto.fromJson(Map<String, dynamic> json) =>
      _$MuseumReviewsDtoFromJson(json);

  MuseumReviews toDomain() => MuseumReviews(
    rating: rating ?? 0,
    count: count ?? 0,
    page: page ?? 1,
    pageSize: pageSize ?? 0,
    canReview: canReview ?? false,
    counts: {
      for (final entry in (counts ?? const <String, int>{}).entries)
        if (parseInt(entry.key) != null) parseInt(entry.key)!: entry.value,
    },
    mine: mine?.toDomain(),
    items: items?.map((e) => e.toDomain()).toList() ?? const [],
  );
}
