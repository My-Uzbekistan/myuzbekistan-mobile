part of 'review_bloc.dart';

@freezed
abstract class ReviewState with _$ReviewState {
  const factory ReviewState({
    @Default([]) List<ReviewModel> reviews,
    @Default(true) bool isLoading,
    int? contentId,
    final int? currentUserRate,
    final Map<int, int>? ratingCounts,
    @Default(false) bool reviewSending,
    @Default(false) bool sendingComplete,

  }) = ReviewDataState;
}
