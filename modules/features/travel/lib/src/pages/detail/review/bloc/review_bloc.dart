import 'package:domain/domain.dart';
import 'package:flutter/foundation.dart';
import 'package:shared/shared.dart';

part 'review_state.dart';

part 'review_event.dart';

part 'review_bloc.freezed.dart';

@injectable
class ReviewBloc extends Bloc<ReviewEvent, ReviewState> {
  final Repository repository;
  final SecurityStorage securityStorage;

  ReviewBloc(this.repository, this.securityStorage)
    : super(const ReviewState()) {
    on<SendReviewEvent>(_sendReview);
    on<ReviewsByContentIdEvent>(_loadReviews);
  }

  Future<void> _sendReview(
    SendReviewEvent event,
    Emitter<ReviewState> emit,
  ) async {
    final contentId = state.contentId;
    if (contentId == null) return;
    emit(
      state.copyWith(
        reviewSending: true,
        sendingComplete: false,
        errorMessage: null,
      ),
    );
    try {
      await repository.addReview(
        contentId: contentId,
        comment: event.comment,
        rating: event.rate,
      );
      emit(
        state.copyWith(
          reviewSending: false,
          sendingComplete: true,
          currentUserRate: event.rate,
        ),
      );
      add(ReviewEvent.loadReviewsByContentId(contentId: contentId));
    } catch (e) {
      emit(
        state.copyWith(reviewSending: false, errorMessage: _errorMessage(e)),
      );
    }
  }

  Future<void> _loadReviews(
    ReviewsByContentIdEvent event,
    Emitter<ReviewState> emit,
  ) async {
    try {
      final result = await Future.wait([
        repository.getReviews(contentId: event.contentId),
        repository.getRatingCount(contentId: event.contentId),
      ]);
      final reviews = result.first as List<ReviewModel>;
      emit(
        state.copyWith(
          reviews: reviews,
          isLoading: false,
          contentId: event.contentId,
          currentUserRate:
          reviews
                  .firstOrNullWhere(
                    (e) => e.userId == securityStorage.getUserId(),
                  )
                  ?.rating,
          ratingCounts: result.second as Map<int, int>,
        ),
      );
    } catch (e) {
      debugPrint("raiting exaption ${e}");
      emit(
        state.copyWith(
          reviews: [],
          isLoading: false,
          contentId: event.contentId,
        ),
      );
    }
  }

  String? _errorMessage(Object error) {
    if (error is DioException && error.error is AppException) {
      return (error.error as AppException).message;
    }
    return null;
  }
}
