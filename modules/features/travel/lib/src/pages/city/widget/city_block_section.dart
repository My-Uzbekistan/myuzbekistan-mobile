import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:travel/src/core/extension.dart';
import 'package:travel/src/widgets/event_card.dart';
import 'package:travel/src/widgets/hotel_card.dart';

const _eventsCategoryId = 7;

class CityBlockSection extends StatelessWidget {
  final CityBlock block;
  final VoidCallback? onSeeAll;
  final ValueChanged<MainPageContent>? onItemTap;

  const CityBlockSection({
    super.key,
    required this.block,
    this.onSeeAll,
    this.onItemTap,
  });

  @override
  Widget build(BuildContext context) {
    final isEvents = block.categoryId == _eventsCategoryId;
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        color: context.appColors.background.elevation1,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
            child: Row(
              spacing: 16,
              children: [
                Expanded(
                  child: Text(
                    block.title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ).h3(),
                ),
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
            height: isEvents ? 280 : 244,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: block.items.length,
              separatorBuilder: (_, __) => const SizedBox(width: 16),
              itemBuilder: (context, index) {
                final item = block.items[index];
                final onTap = onItemTap == null
                    ? null
                    : () => onItemTap!(item);
                return isEvents
                    ? EventCard(event: item, onTap: onTap)
                    : HotelCard(hotel: item, onTap: onTap);
              },
            ),
          ),
        ],
      ),
    );
  }
}
