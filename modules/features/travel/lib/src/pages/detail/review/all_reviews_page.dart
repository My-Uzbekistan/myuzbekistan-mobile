import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';
import 'package:travel/src/pages/detail/review/bloc/review_bloc.dart';
import 'package:travel/src/pages/detail/review/widgets/review_analytics.dart';
import 'package:travel/src/pages/detail/review/widgets/review_item.dart';

class AllReviewsPage extends StatefulWidget {
  const AllReviewsPage({super.key});

  @override
  State<AllReviewsPage> createState() => _AllReviewsPageState();
}

class _AllReviewsPageState extends State<AllReviewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: GradientAppBar(),
      body: BlocBuilder<ReviewBloc, ReviewState>(
        builder: (context, state) {
          return ListView.separated(
            separatorBuilder: (context, index) {
              return SizedBox(height: index == 0 ? 32 : 16);
            },
            padding: EdgeInsets.symmetric(horizontal: 16).copyWith(
              top: MediaQuery.of(context).padding.top + 16,
              bottom: MediaQuery.of(context).padding.bottom + 16,
            ),
            itemBuilder: (context, index) {
              if (index == 0) {
                return ReviewAnalytics(
                  ratingCounts: state.ratingCounts??{},

                );
              }
              return ReviewItem(item: state.reviews[index - 1],isShort: false,);
            },
            itemCount: state.reviews.length + 1,
          );
        },
      ),
    );
  }
}
