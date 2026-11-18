import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';
import 'package:travel/src/core/extension.dart';
import 'package:travel/src/pages/detail/review/bloc/review_bloc.dart';
import 'package:travel/src/pages/detail/review/widgets/review_item.dart';
import 'package:travel/src/pages/detail/widget/detail_section_card.dart';

class ReviewsContainer extends HookWidget {
  final double? ratingAverage;
  final int? reviewCount;
  final VoidCallback? onShowMore;
  final VoidCallback? onLeaveReview;

  const ReviewsContainer({
    super.key,
    this.ratingAverage,
    this.reviewCount,
    this.onShowMore,
    this.onLeaveReview,
  });

  @override
  Widget build(BuildContext context) {
    final pageController = usePageController(viewportFraction: 0.92);
    final currentPage = useState(0);

    useEffect(() {
      void listener() {
        if (!pageController.hasClients) return;
        currentPage.value = pageController.page?.round() ?? 0;
      }

      pageController.addListener(listener);
      return () => pageController.removeListener(listener);
    }, [pageController]);

    return BlocBuilder<ReviewBloc, ReviewState>(
      key: const ValueKey("ReviewContainer"),
      buildWhen: (previous, current) =>
          previous.isLoading != current.isLoading ||
          previous.reviews != current.reviews,
      builder: (context, state) {
        if (state.isLoading) {
          return const SizedBox.shrink();
        }
        final reviews = state.reviews;
        final counts = state.ratingCounts ?? const {};
        final totalFromCounts = counts.values.fold<int>(0, (a, b) => a + b);
        final count = totalFromCounts > 0
            ? totalFromCounts
            : (reviewCount ?? 0) > 0
                ? reviewCount!
                : reviews.length;
        final double avg;
        if (totalFromCounts > 0) {
          final sumR = counts.entries.fold<int>(
            0,
            (s, e) => s + e.key * e.value,
          );
          avg = sumR / totalFromCounts;
        } else if ((ratingAverage ?? 0) > 0) {
          avg = ratingAverage!;
        } else if (reviews.isNotEmpty) {
          avg =
              reviews.map((e) => e.rating).fold<int>(0, (a, b) => a + b) /
              reviews.length;
        } else {
          avg = 0;
        }
        return DetailSectionCard(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _header(context, avg, count),
              if (reviews.isNotEmpty) ...[
                SizedBox(
                  height: 166,
                  child: PageView.builder(
                    controller: pageController,
                    padEnds: false,
                    itemCount: reviews.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(
                          right: index == reviews.length - 1 ? 0 : 16,
                        ),
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: ReviewItem(
                            item: reviews[index],
                            onTap: onShowMore,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                if (reviews.length > 1)
                  Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: _indicator(
                      context,
                      reviews.length,
                      currentPage.value,
                    ),
                  ),
              ],
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: AppActionButton(
                  actionText: context.localization.leaveReview,
                  icon: Assets.svg.starFill.path.toSvgImage(),
                  onPressed: onLeaveReview,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _header(BuildContext context, double avg, int count) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 8,
        children: [
          SizedBox(
            width: double.infinity,
            child: Text(context.localization.reviews).h2(),
          ),
          if (count > 0)
            Row(
              children: [
                SizedBox(
                  height: 16,
                  width: 16,
                  child: Assets.svg.starFill.path.toSvgImage(
                    fit: BoxFit.contain,
                    tintColor: context.appColors.textIconColor.primary,
                  ),
                ),
                const SizedBox(width: 8),
                Text(avg.toStringAsFixed(1).replaceAll('.', ',')).h2(),
                const SizedBox(width: 6),
                Container(
                  width: 4,
                  height: 4,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: context.appColors.textIconColor.secondary,
                  ),
                ),
                const SizedBox(width: 6),
                Text(
                  context.localization.reviewsCount(count),
                ).bodySm(color: context.appColors.textIconColor.secondary),
              ],
            ),
        ],
      ),
    );
  }

  Widget _indicator(BuildContext context, int count, int current) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final track = constraints.maxWidth;
        final thumbWidth = count <= 1
            ? track
            : (track / count).clamp(24.0, track);
        final t = count <= 1 ? 0.0 : (current / (count - 1)).clamp(0.0, 1.0);
        return SizedBox(
          height: 2,
          child: Stack(
            children: [
              Container(
                width: track,
                height: 2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: context.appColors.stroke.nonOpaque,
                ),
              ),
              Align(
                alignment: Alignment(-1 + 2 * t, 0),
                child: Container(
                  width: thumbWidth,
                  height: 2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: context.appColors.textIconColor.primary,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
