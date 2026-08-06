import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:travel/src/core/extension.dart';

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
                  return _CityCard(
                    city: city,
                    weekend: weekend ?? "",
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

class _CityCard extends StatelessWidget {
  final City city;
  final String weekend;
  final VoidCallback? onTap;

  const _CityCard({required this.city, required this.weekend, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(24),
        child: SizedBox(
          width: 220,
          height: 280,
          child: Stack(
            children: [
              Positioned.fill(
                child: SoftEdgeBlur(
                  edges: [
                    EdgeBlur(
                      type: EdgeType.bottomEdge,
                      size: 160,
                      sigma: 6,
                      tileMode: TileMode.mirror,
                      controlPoints: [
                        ControlPoint(
                          position: 0.8,
                          type: ControlPointType.visible,
                        ),
                        ControlPoint(
                          position: 1,
                          type: ControlPointType.transparent,
                        ),
                      ],
                    ),
                  ],
                  child: ExtendedImage.network(
                    city.photo ?? "",
                    fit: BoxFit.cover,
                    loadStateChanged: (state) {
                      switch (state.extendedImageLoadState) {
                        case LoadState.completed:
                          return AnimatedOpacity(
                            opacity: 1.0,
                            duration: const Duration(milliseconds: 200),
                            child: state.completedWidget,
                          );
                        default:
                          return Container(
                            color: context.appColors.fill.quaternary,
                          );
                      }
                    },
                  ),
                ),
              ),
              Positioned.fill(
                child: ColoredBox(color: Colors.black.withValues(alpha: 0.16)),
              ),
              Positioned.fill(
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: const [0.0, 0.596, 1.0],
                      colors: [
                        const Color(0xFF14191A).withValues(alpha: 0),
                        const Color(0xFF14191A).withValues(alpha: 0.48),
                        const Color(0xFF14191A).withValues(alpha: 0.72),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 16,
                right: 16,
                bottom: 16,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      city.name,
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ).h3(color: context.appColors.static.white),
                    const SizedBox(height: 4),
                    Text(
                      weekend,
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ).bodySm(
                      color: context.appColors.static.white
                          .withValues(alpha: 0.56),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 12,
                top: 12,
                child: Container(
                  height: 28,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: context.appColors.static.white,
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Text(
                    context.localization.home_city_badge,
                    maxLines: 1,
                  ).labelSm(color: context.appColors.static.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
