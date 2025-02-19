part of 'home_groups.dart';

class ItemCard extends StatelessWidget {
  final HomeListCellContent content;
  final VoidCallback? onTap;
  const ItemCard({super.key, required this.content,this.onTap});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final itemWidth = screenWidth * 0.25;
    final width = max(156.0, min(200.0, itemWidth));

    return IntrinsicWidth(
      child: BounceTap(
        onTap: onTap,
        child: SizedBox(
          width: width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 8,
            children: [
              AppImageCard.large(
                imageUrl: content.imageUrl,
                star: content.star,
                rate: content.rate,
                priceRate: content.priceRate
              ),
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
                      content.description ?? "",
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
