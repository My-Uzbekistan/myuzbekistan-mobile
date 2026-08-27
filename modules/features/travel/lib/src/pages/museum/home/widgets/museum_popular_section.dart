import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:travel/src/core/extension.dart';
import 'package:travel/src/pages/museum/widgets/museum_section.dart';
import 'package:shared/shared.dart';

class MuseumPopularSection extends StatelessWidget {
  const MuseumPopularSection({
    super.key,
    required this.museums,
    required this.onMuseumTap,
  });

  final List<MuseumCard> museums;
  final ValueChanged<MuseumCard> onMuseumTap;

  @override
  Widget build(BuildContext context) {
    return MuseumSection(
      title: context.localization.museum_section_popular,
      child: SizedBox(
        height: 280,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          itemCount: museums.length,
          separatorBuilder: (context, index) => const SizedBox(width: 16),
          itemBuilder:
              (context, index) => _PopularCard(
                museum: museums[index],
                onTap: () => onMuseumTap(museums[index]),
              ),
        ),
      ),
    );
  }
}

class _PopularCard extends StatelessWidget {
  const _PopularCard({required this.museum, required this.onTap});

  final MuseumCard museum;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(24),
        child: SizedBox(
          width: 220,
          child: Stack(
            fit: StackFit.expand,
            children: [
              ColoredBox(
                color: colors.fill.quaternary,
                child: AppNetworkImage(
                  museum.image,
                  fit: BoxFit.cover,
                  loadingWidget: Shimmer.fromDefault(
                    child: const ShimmerDefaultContainer(
                      height: double.maxFinite,
                      width: double.maxFinite,
                      radius: 0,
                    ),
                  ),
                  placeholder: Assets.png.defaultContentImage.image(
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: const [0, 0.596, 1],
                    colors: [
                      colors.service.scrim.withValues(alpha: 0),
                      colors.service.scrim.withValues(alpha: 0.48),
                      colors.service.scrim.withValues(alpha: 0.72),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 16,
                right: 16,
                bottom: 16,
                child: Column(
                  spacing: 8,
                  children: [
                    Text(
                      museum.title,
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ).h3(color: colors.service.onMedia),
                    if (museum.rating > 0)
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        spacing: 4,
                        children: [
                          SizedBox.square(
                            dimension: 20,
                            child: Assets.svg.starLeadingHalfFilled.path
                                .toSvgImage(
                                  fit: BoxFit.contain,
                                  tintColor: colors.service.onMedia,
                                ),
                          ),
                          Text(
                            NumberFormat(
                              "0.0",
                              Localizations.localeOf(context).languageCode,
                            ).format(museum.rating),
                          ).labelLg(color: colors.static.white),
                        ],
                      ),
                  ],
                ),
              ),
              Positioned(
                left: 12,
                top: 12,
                child: Container(
                  height: 28,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color: colors.static.white,
                    border: Border.all(color: colors.static.white),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Text(
                    context.localization.museum_popular_badge,
                  ).labelSm(color: colors.static.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
