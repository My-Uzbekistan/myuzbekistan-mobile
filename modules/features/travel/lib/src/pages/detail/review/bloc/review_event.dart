part of 'review_bloc.dart';

@freezed
abstract class ReviewEvent with _$ReviewEvent {
  const factory ReviewEvent.sendReview({
    required String comment,
    required int rate,
  }) = SendReviewEvent;

  const factory ReviewEvent.loadReviewsByContentId({
    required int contentId,
  }) = ReviewsByContentIdEvent;
}
