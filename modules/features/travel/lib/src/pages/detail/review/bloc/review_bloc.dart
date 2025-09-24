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
    try {
      emit(state.copyWith(reviewSending: true, sendingComplete: false));
      await repository.addReview(
        contentId: state.contentId!,
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
    } catch (_) {
      emit(state.copyWith(reviewSending: false));
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
}
