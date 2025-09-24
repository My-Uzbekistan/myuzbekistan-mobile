import 'package:shared/shared.dart';

import '../../../utils/convertors/date_time_converter.dart';


part 'review_dto.g.dart';

@JsonSerializable()
class ReviewDto {
  final int userId;
  final String? comment;
  final int rating;
  final int id;
  final String userName;
  final String? avatar;
  @DateTimeConverter()
  final DateTime? createdAt;

  ReviewDto({
    required this.userId,
     this.comment,
    required this.rating,
    required this.id,
    required this.userName,
    this.avatar,
    this.createdAt
  });

  // JSON -> Model
  factory ReviewDto.fromJson(Map<String, dynamic> json) =>
      _$ReviewDtoFromJson(json);

  // Model -> JSON
  Map<String, dynamic> toJson() => _$ReviewDtoToJson(this);
}