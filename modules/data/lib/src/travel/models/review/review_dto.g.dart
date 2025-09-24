// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReviewDto _$ReviewDtoFromJson(Map<String, dynamic> json) => ReviewDto(
  userId: (json['userId'] as num).toInt(),
  comment: json['comment'] as String?,
  rating: (json['rating'] as num).toInt(),
  id: (json['id'] as num).toInt(),
  userName: json['userName'] as String,
  avatar: json['avatar'] as String?,
  createdAt: const DateTimeConverter().fromJson(json['createdAt'] as String?),
);

Map<String, dynamic> _$ReviewDtoToJson(ReviewDto instance) => <String, dynamic>{
  'userId': instance.userId,
  'comment': instance.comment,
  'rating': instance.rating,
  'id': instance.id,
  'userName': instance.userName,
  'avatar': instance.avatar,
  'createdAt': const DateTimeConverter().toJson(instance.createdAt),
};
