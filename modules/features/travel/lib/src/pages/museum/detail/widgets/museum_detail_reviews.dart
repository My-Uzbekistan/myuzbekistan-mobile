import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:travel/src/core/extension.dart';
import 'package:shared/shared.dart';

class MuseumDetailReviews extends HookWidget {
  const MuseumDetailReviews({super.key, required this.reviews});

  final MuseumReviews reviews;

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

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 12,
      children: [
        _header(context),
        if (reviews.items.isNotEmpty)
          SizedBox(
            height: 166,
            child: PageView.builder(
              controller: pageController,
              padEnds: false,
              itemCount: reviews.items.length,
              itemBuilder:
                  (context, index) => Padding(
                    padding: EdgeInsets.only(
                      right: index == reviews.items.length - 1 ? 0 : 16,
                    ),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: _ReviewCard(review: reviews.items[index]),
                    ),
                  ),
            ),
          ),
        if (reviews.items.length > 1)
          _indicator(context, reviews.items.length, currentPage.value),
      ],
    );
  }

  Widget _header(BuildContext context) {
    final colors = context.appColors;

    if (reviews.count == 0) {
      return Text(
        context.localization.museum_not_rated,
      ).bodySm(color: colors.textIconColor.secondary);
    }

    return Row(
      children: [
        SizedBox.square(
          dimension: 16,
          child: Assets.svg.starFill.path.toSvgImage(
            fit: BoxFit.contain,
            tintColor: colors.textIconColor.primary,
          ),
        ),
        const SizedBox(width: 8),
        Text(
          NumberFormat(
            "0.0",
            Localizations.localeOf(context).languageCode,
          ).format(reviews.rating),
        ).h2(color: colors.textIconColor.primary),
        const SizedBox(width: 6),
        Container(
          width: 4,
          height: 4,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: colors.textIconColor.secondary,
          ),
        ),
        const SizedBox(width: 6),
        Text(
          context.localization.museum_reviews_count(reviews.count),
        ).bodySm(color: colors.textIconColor.secondary),
      ],
    );
  }

  Widget _indicator(BuildContext context, int count, int current) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final track = constraints.maxWidth;
        final thumbWidth =
            count <= 1 ? track : (track / count).clamp(24.0, track);
        final progress =
            count <= 1 ? 0.0 : (current / (count - 1)).clamp(0.0, 1.0);

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
                alignment: Alignment(-1 + 2 * progress, 0),
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

class _ReviewCard extends StatelessWidget {
  const _ReviewCard({required this.review});

  final MuseumReview review;

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: colors.stroke.nonOpaque),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 16,
        children: [
          Row(
            spacing: 12,
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: colors.textIconColor.primary,
                child: Text(
                  review.userName.isNotEmpty
                      ? review.userName.characters.first.toUpperCase()
                      : "?",
                ).labelMd(color: colors.textIconColor.oposite),
              ),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 4,
                  children: [
                    Text(
                      review.userName.split("@").first,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ).labelMd(color: colors.textIconColor.primary),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      spacing: 6,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          spacing: 2,
                          children: [
                            for (var index = 0; index < 5; index++)
                              SizedBox.square(
                                dimension: 12,
                                child: Assets.svg.starFill.path.toSvgImage(
                                  fit: BoxFit.contain,
                                  tintColor:
                                      index < review.rating
                                          ? colors.colors.yellow
                                          : colors.fill.tertiary,
                                ),
                              ),
                          ],
                        ),
                        if (review.createdAt != null)
                          Flexible(
                            child: Text(
                              review.createdAt!.toFormatMMMY(),
                              maxLines: 1,
                            ).bodyXsm(color: colors.textIconColor.secondary),
                          ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Text(
            review.comment.orEmpty(),
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ).bodyMd(color: colors.textIconColor.primary),
        ],
      ),
    );
  }
}
