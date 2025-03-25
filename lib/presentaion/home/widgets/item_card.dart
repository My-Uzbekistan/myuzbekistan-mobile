part of 'home_groups.dart';

class ItemCard extends StatelessWidget {
  final MainPageContent content;
  final VoidCallback? onTap;

  const ItemCard({super.key, required this.content, this.onTap});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final itemWidth = screenWidth * 0.25;
    final width = max(156.0, min(200.0, itemWidth));

    final contentImage = content.viewType == ViewType.places
        ? AppImageCard.large(
            imageUrl: content.mainPhoto,
            ratingAverage: content.ratingAverage ?? 0,
            averageCheck: content.averageCheck ?? 0,
          )
        : AppImageCard.large(
            imageUrl: content.mainPhoto,
            priceText: (content.priceInDollar ?? 0).floor() > 0
                ? "\$${content.priceInDollar?.floor()}"
                : null);
    return IntrinsicWidth(
      child: BounceTap(
        onTap: onTap,
        child: SizedBox(
          width: width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 8,
            children: [
              contentImage,
              SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 2,
                  children: [
                    Text(
                      content.title ?? "",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTypography.bodyMd,
                    ),
                    Text(
                      content.contentAddress ?? "",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTypography.bodyMd.copyWith(
                          color: context.appColors.textIconColor.secondary),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
