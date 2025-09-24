class ReviewModel {
  final int userId;
  final String comment;
  final int rating;
  final int id;
  final String userName;
  final String? avatar;
  final DateTime? createdAt;

  ReviewModel({
    required this.userId,
    required this.comment,
    required this.rating,
    required this.id,
    required this.userName,
    this.avatar,
    this.createdAt
  });
}

