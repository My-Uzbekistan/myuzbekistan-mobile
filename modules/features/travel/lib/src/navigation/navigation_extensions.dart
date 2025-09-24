import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart';
import 'package:travel/src/pages/detail/review/bloc/review_bloc.dart';

extension NavExtension on BuildContext {
  pushAddReviewPage({
    required ReviewBloc bloc,
    required String contentTitle,
    required String contentType,
    required int rating,
  }) {
    pushNamed(
      AppNavPath.travel.addReviewPage.name,
      extra: bloc,
      queryParameters: {
        "title": contentTitle,
        "type": contentType,
        "rating": rating.toString(),
      },
    );
  }

  pushAllReviewsPage({required ReviewBloc bloc}) {
    pushNamed(AppNavPath.travel.allReviews.name, extra: bloc);
  }
}
