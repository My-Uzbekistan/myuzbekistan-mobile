import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';
import 'package:travel/src/pages/detail/review/bloc/review_bloc.dart';
import 'package:travel/src/pages/detail/review/widgets/review_analytics.dart';
import 'package:travel/src/pages/detail/review/widgets/review_item.dart';

class AllReviewsPage extends StatelessWidget {
  const AllReviewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.appColors.background.underlayer,
      extendBodyBehindAppBar: true,
      appBar: GradientAppBar(
        gradientColor: context.appColors.background.underlayer,
      ),
      body: BlocBuilder<ReviewBloc, ReviewState>(
        builder: (context, state) {
          return ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(height: 8),
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).padding.top + 16,
              bottom: MediaQuery.of(context).padding.bottom + 16,
            ),
            itemBuilder: (context, index) {
              if (index == 0) {
                return _card(
                  context,
                  ReviewAnalytics(ratingCounts: state.ratingCounts ?? {}),
                );
              }
              return _card(
                context,
                ReviewItem(item: state.reviews[index - 1], isShort: false),
              );
            },
            itemCount: state.reviews.length + 1,
          );
        },
      ),
    );
  }

  Widget _card(BuildContext context, Widget child) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: context.appColors.background.elevation1,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.all(16),
      child: child,
    );
  }
}
