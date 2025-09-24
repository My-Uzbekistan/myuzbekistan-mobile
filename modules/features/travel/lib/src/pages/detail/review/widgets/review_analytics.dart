import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:travel/src/core/extension.dart';
import 'package:travel/src/pages/detail/review/widgets/review_item.dart';

class ReviewAnalytics extends StatelessWidget {
  final Map<int, int> ratingCounts;

  const ReviewAnalytics({
    super.key,
    this.ratingCounts = const {} ,
  });

  @override
  Widget build(BuildContext context) {

    final totalReviews = ratingCounts.values.fold(0, (a, b) => a + b);
    final totalRating = ratingCounts.entries.fold(0, (sum, entry) {
      return sum + entry.key * entry.value;
    });
    final averageRating = totalReviews == 0 ? 0 : totalRating / totalReviews;

    return Row(
      children: [
        Expanded(
          child: Row(
            spacing: 16,
            children: [
              Text(
                averageRating.toStringAsFixed(1).replaceFirst(".", ','),
              ).h1(),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ReviewStars(stars: averageRating.round()), // yaxshiroq
                    Text(context.localization.reviewsCount(totalReviews)).bodySm(color: context.appColors.textIconColor.secondary),
                  ],
                ),
              ),
            ],
          ),
        ),
        Column(
          children: List.generate(5, (index) {
            final rating = 5 - index; // 5 dan 1 gacha
            final count = ratingCounts[rating] ?? 0;
            final double progress =
                totalReviews == 0 ? 0 : count / totalReviews;

            return ProgressItem(title: rating.toString(), progress: progress);
          }),
        ),
      ],
    );
  }
}

class ProgressItem extends StatelessWidget {
  final double progress;
  final String title;

  const ProgressItem({super.key, this.progress = 0.5, this.title = "title"});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 12,
      child: Row(
        spacing: 6,
        children: [
          Text(title).bodyXXsm(),
          ClipRRect(
            borderRadius: BorderRadius.circular(32),
            child: Container(
              width: 94,
              height: 4,
              color: context.appColors.textIconColor.disable,
              child: FractionallySizedBox(
                widthFactor: progress,
                alignment: Alignment.centerLeft,
                child: Container(
                  color: context.appColors.textIconColor.primary,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
