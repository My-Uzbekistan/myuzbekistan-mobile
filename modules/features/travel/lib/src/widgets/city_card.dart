import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:travel/src/core/extension.dart';

class CityCard extends StatelessWidget {
  final String name;
  final String? photo;
  final String? subtitle;
  final VoidCallback? onTap;

  const CityCard({
    super.key,
    required this.name,
    this.photo,
    this.subtitle,
    this.onTap,
  });

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
                      size: 88,
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
                  child: AppNetworkImage(
                    photo ?? "",
                    fit: BoxFit.cover,
                    placeholder: ColoredBox(
                      color: context.appColors.fill.quaternary,
                    ),
                  ),
                ),
              ),
              Positioned.fill(
                child: ColoredBox(
                  color: context.appColors.service.scrim.withValues(
                    alpha: 0.16,
                  ),
                ),
              ),
              Positioned.fill(
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: const [0.6, 0.84, 1.0],
                      colors: [
                        context.appColors.service.scrim.withValues(alpha: 0),
                        context.appColors.service.scrim.withValues(
                          alpha: 0.48,
                        ),
                        context.appColors.service.scrim.withValues(
                          alpha: 0.72,
                        ),
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
                      name,
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ).h3(color: context.appColors.service.onMedia),
                    const SizedBox(height: 4),
                    Text(
                      subtitle ?? "",
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ).bodySm(
                      color: context.appColors.service.onMedia.withValues(
                        alpha: 0.56,
                      ),
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
                    color: context.appColors.service.onMedia,
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Text(
                    context.localization.home_city_badge,
                    maxLines: 1,
                  ).labelSm(color: context.appColors.service.scrim),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
