// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'museum_review_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MuseumReviewDto _$MuseumReviewDtoFromJson(Map<String, dynamic> json) =>
    MuseumReviewDto(
      id: (json['id'] as num).toInt(),
      userId: (json['userId'] as num?)?.toInt(),
      userName: json['userName'] as String?,
      rating: (json['rating'] as num?)?.toInt(),
      comment: json['comment'] as String?,
      createdAt: json['createdAt'] as String?,
      isMine: json['isMine'] as bool?,
    );

Map<String, dynamic> _$MuseumReviewDtoToJson(MuseumReviewDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'userName': instance.userName,
      'rating': instance.rating,
      'comment': instance.comment,
      'createdAt': instance.createdAt,
      'isMine': instance.isMine,
    };
