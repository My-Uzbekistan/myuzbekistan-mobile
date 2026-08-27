import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

part 'museum_review_dto.g.dart';

@JsonSerializable()
class MuseumReviewDto {
  final int id;
  final int? userId;
  final String? userName;
  final int? rating;
  final String? comment;
  final String? createdAt;
  final bool? isMine;

  MuseumReviewDto({
    required this.id,
    this.userId,
    this.userName,
    this.rating,
    this.comment,
    this.createdAt,
    this.isMine,
  });

  factory MuseumReviewDto.fromJson(Map<String, dynamic> json) =>
      _$MuseumReviewDtoFromJson(json);

  MuseumReview toDomain() => MuseumReview(
    id: id,
    userId: userId,
    userName: userName ?? "",
    rating: rating ?? 0,
    comment: comment,
    createdAt: DateTime.tryParse(createdAt ?? "")?.toLocal(),
    isMine: isMine ?? false,
  );
}
