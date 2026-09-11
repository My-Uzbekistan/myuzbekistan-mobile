import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:travel/src/pages/home/widgets/item_card_avatar.dart';
import 'package:travel/src/widgets/content_section.dart';
import 'package:travel/src/widgets/event_card.dart';
import 'package:travel/src/widgets/hotel_card.dart';

const _eventsCategoryId = 7;
const _guidesCategoryId = 9;

class GlobalSearchGroup extends StatelessWidget {
  final SearchGroup group;
  final VoidCallback? onSeeAll;
  final ValueChanged<MainPageContent> onItemTap;

  const GlobalSearchGroup({
    super.key,
    required this.group,
    required this.onItemTap,
    this.onSeeAll,
  });

  @override
  Widget build(BuildContext context) {
    final isGuides = group.categoryId == _guidesCategoryId;
    final isEvents = group.categoryId == _eventsCategoryId;

    return ContentSection(
      title: group.title,
      onSeeAll: group.deeplink == null ? null : onSeeAll,
      child: SizedBox(
        height: isGuides
            ? 122
            : isEvents
            ? 280
            : 244,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          itemCount: group.items.length,
          separatorBuilder: (_, __) => SizedBox(width: isGuides ? 12 : 16),
          itemBuilder: (context, index) {
            final item = group.items[index];
            if (isGuides) {
              return ItemCardAvatar(
                avatarUrl: item.mainPhoto,
                name: item.title,
                onTap: () => onItemTap(item),
              );
            }
            return isEvents
                ? EventCard(event: item, onTap: () => onItemTap(item))
                : HotelCard(hotel: item, onTap: () => onItemTap(item));
          },
        ),
      ),
    );
  }
}
