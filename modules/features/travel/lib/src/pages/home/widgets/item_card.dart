part of 'home_groups.dart';

class ItemCard extends StatefulWidget {
  final MainPageContent content;
  final String? distanceText;
  final VoidCallback? onTap;

  const ItemCard({super.key, required this.content,this.distanceText, this.onTap});

  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard>
    with AutomaticKeepAliveClientMixin {
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
          mainAxisSize: MainAxisSize.min,
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
                  if((widget.content.contentAddress??"").isNotEmpty)
                  RichText(text: TextSpan(
                    children: [
                      TextSpan(text: widget.content.contentAddress??"" ),
                      if(widget.content.distanceKm!=null)
                        TextSpan(text:" • ${widget.distanceText}"),
                    ],
                    style: CustomTypography.bodySm.copyWith(color: context.appColors.textIconColor.secondary)
                  )),
                  if ((widget.content.ratingAverage ?? 0) > 0)
                    Row(
                      spacing: 4,
                      children: [
                        Assets.svgStar.toSvgImage(
                            width: 16,
                            height: 16,
                            colorFilter: ColorFilter.mode(
                                context.appColors.textIconColor.primary, BlendMode.srcIn)),
                       Flexible(child:  RichText(
                         text: TextSpan(
                             style: CustomTypography.labelMd.copyWith(
                                 color:
                                 context.appColors.textIconColor.primary),
                             children: [
                               TextSpan(text: widget.content.ratingAverage.toString()),
                               if((widget.content.reviewCount??0)>0)
                                 TextSpan(
                                   text: " (${widget.content.reviewCount})",
                                   style: CustomTypography.labelMd.copyWith(
                                       color: context
                                           .appColors.textIconColor.secondary),
                                 ),
                             ]),
                       ))
                      ],
                    )
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
