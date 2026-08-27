import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:travel/src/pages/museum/widgets/museum_card_tile.dart';
import 'package:travel/src/pages/museum/widgets/museum_section.dart';

class MuseumCardsSection extends StatelessWidget {
  const MuseumCardsSection({
    super.key,
    required this.title,
    required this.museums,
    required this.onMuseumTap,
    required this.onFavoriteTap,
  });

  final String title;
  final List<MuseumCard> museums;
  final ValueChanged<MuseumCard> onMuseumTap;
  final ValueChanged<MuseumCard> onFavoriteTap;

  @override
  Widget build(BuildContext context) {
    return MuseumSection(
      title: title,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          spacing: 12,
          children: [
            for (final museum in museums)
              MuseumCardTile(
                key: ValueKey(museum.id),
                museum: museum,
                onTap: () => onMuseumTap(museum),
                onFavoriteTap: () => onFavoriteTap(museum),
              ),
          ],
        ),
      ),
    );
  }
}
