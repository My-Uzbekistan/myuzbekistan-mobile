import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:travel/src/widgets/city_card.dart';
import 'package:travel/src/widgets/content_section.dart';

class GlobalSearchCities extends StatelessWidget {
  final SearchCitiesBlock block;
  final ValueChanged<SearchCity> onCityTap;

  const GlobalSearchCities({
    super.key,
    required this.block,
    required this.onCityTap,
  });

  @override
  Widget build(BuildContext context) {
    return ContentSection(
      title: block.title,
      child: SizedBox(
        height: 280,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          itemCount: block.items.length,
          separatorBuilder: (_, __) => const SizedBox(width: 16),
          itemBuilder: (context, index) {
            final city = block.items[index];
            return CityCard(
              name: city.name,
              photo: city.photo,
              subtitle: city.subtitle ?? block.weekend,
              onTap: () => onCityTap(city),
            );
          },
        ),
      ),
    );
  }
}
