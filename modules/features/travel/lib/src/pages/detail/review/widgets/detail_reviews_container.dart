import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';
import 'package:travel/src/core/extension.dart';
import 'package:travel/src/pages/detail/review/bloc/review_bloc.dart';
import 'package:travel/src/pages/detail/review/widgets/review_analytics.dart';
import 'package:travel/src/pages/detail/review/widgets/review_item.dart';

class ReviewsContainer extends StatefulWidget {
  final ValueChanged<int>? addReview;
  final ValueChanged<int>? openAllReviews;

  const ReviewsContainer({super.key, this.addReview, this.openAllReviews});

  @override
  State<ReviewsContainer> createState() => _ReviewsContainerState();
}

class _ReviewsContainerState extends State<ReviewsContainer> {
  PageController pageController = PageController(viewportFraction: 0.9);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReviewBloc, ReviewState>(
      key: ValueKey("ReviewContainer"),
      buildWhen: (previous, current) {
        return previous.isLoading != current.isLoading ||
            previous.reviews != current.reviews ||
            previous.currentUserRate != current.currentUserRate;
      },
      builder: (BuildContext context, state) {
        return AnimatedSwitcher(
          duration: Duration(milliseconds: 200),
          child:
              state.isLoading
                  ? SizedBox.shrink()
                  : _buildContent(context, state),
        );
      },
    );
  }

  Widget _buildContent(BuildContext context, ReviewState state) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,

        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: ReviewAnalytics(ratingCounts: state.ratingCounts ?? {}),
          ),
          SizedBox(height: 40),
          Column(
            spacing: 10,
            children: [
              Text(context.localization.leaveFeedback).labelLg(),
              ReviewStars(
                stars: state.currentUserRate ?? 0,
                filled: true,
                size: 32,
                spacing: 8,
                selectedColor: context.appColors.colors.yellow,
                onItemTab: widget.addReview,
              ),
            ],
          ),
          SizedBox(height: 24),
          if (state.reviews.isNotEmpty)
            SizedBox(
              height: 166,
              child: PageView.builder(
                controller: pageController,
                padEnds: true,

                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(
                      left: index == 0 ? 0 : 8,
                      right: index == 4 ? 0 : 8,
                    ),
                    child: Container(
                      alignment: Alignment.topCenter,
                      child: ReviewItem(
                        item: state.reviews[index],
                        onTap:
                            widget.openAllReviews != null
                                ? () {
                                  widget.openAllReviews?.call(index);
                                }
                                : null,
                      ),
                    ),
                  );
                },
                itemCount: state.reviews.length,
              ),
            ),
        ],
      ),
    );
  }
}
