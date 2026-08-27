import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:travel/src/core/extension.dart';
import 'package:travel/src/widgets/hotel_card.dart';

class HotelsWidget extends StatelessWidget {
  final List<MainPageContent> hotels;
  final VoidCallback? onSeeAll;
  final ValueChanged<MainPageContent>? onHotelTap;

  const HotelsWidget({
    super.key,
    required this.hotels,
    this.onSeeAll,
    this.onHotelTap,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        margin: const EdgeInsets.only(top: 12),
        padding: const EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: context.appColors.background.elevation1,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      context.localization.catalogHotels,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ).h3(),
                  ),
                  const SizedBox(width: 16),
                  GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: onSeeAll,
                    child: Text(context.localization.action_all)
                        .bodyLg(color: context.appColors.brandSeaBlue),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 244,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemCount: hotels.length,
                separatorBuilder: (_, __) => const SizedBox(width: 16),
                itemBuilder: (context, index) {
                  final hotel = hotels[index];
                  return HotelCard(
                    hotel: hotel,
                    onTap: onHotelTap == null ? null : () => onHotelTap!(hotel),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
