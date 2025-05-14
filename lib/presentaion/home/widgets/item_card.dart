part of 'home_groups.dart';

class ItemCard extends StatefulWidget  {
  final MainPageContent content;
  final VoidCallback? onTap;

  const ItemCard({super.key, required this.content, this.onTap});

  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final itemWidth = screenWidth * 0.25;
    final width = max(156.0, min(200.0, itemWidth));

    final contentImage = widget.content.viewType == ViewType.places
        ? AppImageCard.large(
            imageUrl: widget.content.mainPhoto,
            ratingAverage: widget.content.ratingAverage ?? 0,
            averageCheck: widget.content.averageCheck ?? 0,
          )
        : AppImageCard.large(
            imageUrl: widget.content.mainPhoto,
            priceText: (widget.content.priceInDollar ?? 0).floor() > 0
                ? "~\$${widget.content.priceInDollar?.floor()}"
                : null);
    return IntrinsicWidth(
      child: BounceTap(
        onTap: widget.onTap,
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
                      widget.content.title ?? "",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTypography.bodyMd,
                    ),
                    Text(
                      widget.content.contentAddress ?? "",
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

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
