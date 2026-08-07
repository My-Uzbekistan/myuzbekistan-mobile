import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';
import 'package:travel/src/core/extension.dart';
import 'package:travel/src/pages/detail/review/bloc/review_bloc.dart';
import 'package:travel/src/pages/detail/widget/info_widget.dart';

class DetailHeader extends StatelessWidget {
  final ContentDetail content;

  const DetailHeader({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Column(
          spacing: 16,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              content.title.orEmpty().trim(),
              textAlign: TextAlign.center,
            ).h1(),
            if (content.shortDescriptionAvailable)
              Text(
                content.shortDescription!.trim(),
                textAlign: TextAlign.center,
              ).bodyMd(color: context.appColors.textIconColor.secondary),
          ],
        ),
        BlocBuilder<ReviewBloc, ReviewState>(
          buildWhen: (p, c) =>
              p.ratingCounts != c.ratingCounts ||
              p.reviews != c.reviews ||
              p.isLoading != c.isLoading,
          builder: (context, rState) {
            final items = _infoItems(context, rState);
            if (items.isEmpty) return const SizedBox.shrink();
            return Padding(
              padding: const EdgeInsets.only(top: 24),
              child: InfoWidget(
                info: DetailInfo(items: items),
                distanceMeters: content.distance,
              ),
            );
          },
        ),
      ],
    );
  }

  List<InfoItem> _infoItems(BuildContext context, ReviewState rState) {
    final items = <InfoItem>[...?content.info?.items];
    final hasRating = items.any(
      (e) => e.type == InfoType.rating || e.slug == InfoSlug.rating,
    );
    final avg = _reviewAvg(rState);
    if (!hasRating && avg > 0) {
      final rating = InfoItem(
        slug: InfoSlug.rating,
        type: InfoType.rating,
        key: context.localization.rating,
        value: avg.toStringAsFixed(1),
      );
      if (items.length >= 2) {
        items.insert(1, rating);
      } else {
        items.add(rating);
      }
    }
    return items;
  }

  double _reviewAvg(ReviewState s) {
    final counts = s.ratingCounts ?? const <int, int>{};
    final total = counts.values.fold<int>(0, (a, b) => a + b);
    if (total > 0) {
      final sum = counts.entries.fold<int>(0, (a, e) => a + e.key * e.value);
      return sum / total;
    }
    if (s.reviews.isNotEmpty) {
      return s.reviews.map((e) => e.rating).fold<int>(0, (a, b) => a + b) /
          s.reviews.length;
    }
    return content.ratingAverage ?? 0;
  }
}
