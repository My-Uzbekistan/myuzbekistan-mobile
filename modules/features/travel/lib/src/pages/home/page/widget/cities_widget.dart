import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:travel/src/core/extension.dart';
import 'package:travel/src/widgets/city_card.dart';

class CitiesWidget extends StatelessWidget {
  final List<City> cities;
  final String? weekend;
  final ValueChanged<City>? onCityTap;

  const CitiesWidget({
    super.key,
    required this.cities,
    this.weekend,
    this.onCityTap,
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(context.localization.home_cities).h3(),
                  const SizedBox(height: 4),
                  Text(
                    context.localization.home_cities_subtitle,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ).bodyMd(color: context.appColors.textIconColor.secondary),
                ],
              ),
            ),
            SizedBox(
              height: 280,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemCount: cities.length,
                separatorBuilder: (_, __) => const SizedBox(width: 16),
                itemBuilder: (context, index) {
                  final city = cities[index];
                  return CityCard(
                    name: city.name,
                    photo: city.photo,
                    subtitle: weekend,
                    onTap: onCityTap == null ? null : () => onCityTap!(city),
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
