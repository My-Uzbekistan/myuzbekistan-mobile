class MuseumReview {
  final int id;
  final int? userId;
  final String userName;
  final int rating;
  final String? comment;
  final DateTime? createdAt;
  final bool isMine;

  MuseumReview({
    required this.id,
    required this.userName,
    required this.rating,
    required this.isMine,
    this.userId,
    this.comment,
    this.createdAt,
  });
}
