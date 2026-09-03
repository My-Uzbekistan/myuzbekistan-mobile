import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:travel/src/pages/city/widget/city_section.dart';
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
    return CitySection(
      title: block.title,
      onSeeAll: onSeeAll,
      contentPadding: EdgeInsets.zero,
      child: SizedBox(
        height: isEvents ? 280 : 244,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          itemCount: block.items.length,
          separatorBuilder: (_, __) => const SizedBox(width: 16),
          itemBuilder: (context, index) {
            final item = block.items[index];
            final onTap = onItemTap == null ? null : () => onItemTap!(item);
            return isEvents
                ? EventCard(event: item, onTap: onTap)
                : HotelCard(hotel: item, onTap: onTap);
          },
        ),
      ),
    );
  }
}
