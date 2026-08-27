// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'museum_reviews_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MuseumReviewsDto _$MuseumReviewsDtoFromJson(Map<String, dynamic> json) =>
    MuseumReviewsDto(
      rating: (json['rating'] as num?)?.toDouble(),
      count: (json['count'] as num?)?.toInt(),
      page: (json['page'] as num?)?.toInt(),
      pageSize: (json['pageSize'] as num?)?.toInt(),
      canReview: json['canReview'] as bool?,
      counts: (json['counts'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, (e as num).toInt()),
      ),
      mine: json['mine'] == null
          ? null
          : MuseumReviewDto.fromJson(json['mine'] as Map<String, dynamic>),
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => MuseumReviewDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MuseumReviewsDtoToJson(MuseumReviewsDto instance) =>
    <String, dynamic>{
      'rating': instance.rating,
      'count': instance.count,
      'page': instance.page,
      'pageSize': instance.pageSize,
      'canReview': instance.canReview,
      'counts': instance.counts,
      'mine': instance.mine,
      'items': instance.items,
    };
