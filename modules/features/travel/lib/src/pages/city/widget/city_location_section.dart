import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart' hide Toast;
import 'package:travel/src/core/extension.dart';

class CityLocationSection extends StatelessWidget {
  final CityLocation location;

  const CityLocationSection({super.key, required this.location});

  Future<void> _openRoute() async {
    if (!location.hasCoordinates) return;
    final maps = await MapLauncher.installedMaps;
    final map = maps.firstOrNull;
    if (map == null) return;
    await map.showDirections(
      destination: Coords(location.lat!, location.lon!),
      destinationTitle: location.regionName,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: context.appColors.background.elevation1,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              spacing: 8,
              children: [
                Text(
                  location.title ?? context.localization.location,
                ).h3(),
                if ((location.regionName ?? "").isNotEmpty)
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 8,
                    children: [
                      SizedBox.square(
                        dimension: 24,
                        child: Assets.svg.pinLocationLine.path.toSvgImage(
                          fit: BoxFit.contain,
                          tintColor: context.appColors.textIconColor.primary,
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          spacing: 4,
                          children: [
                            Text(location.regionName!).bodyMd(),
                            if ((location.distanceText ?? "").isNotEmpty)
                              Text(location.distanceText!).bodyMd(
                                color:
                                    context.appColors.textIconColor.tertiary,
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          ),
          if (location.hasCoordinates) _map(context),
        ],
      ),
    );
  }

  Widget _map(BuildContext context) {
    final target = LatLng(location.lat!, location.lon!);
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: SizedBox(
        height: 172,
        child: Stack(
          children: [
            Positioned.fill(
              child: GoogleMap(
                key: ValueKey(target),
                scrollGesturesEnabled: false,
                zoomGesturesEnabled: false,
                rotateGesturesEnabled: false,
                tiltGesturesEnabled: false,
                zoomControlsEnabled: false,
                myLocationButtonEnabled: false,
                onTap: (_) => _openRoute(),
                circles: {
                  Circle(
                    circleId: const CircleId("city_marker"),
                    center: target,
                    radius: 24,
                    strokeWidth: 4,
                    strokeColor: context.appColors.static.white,
                    fillColor: context.appColors.colors.red,
                  ),
                },
                initialCameraPosition: CameraPosition(target: target, zoom: 11),
              ),
            ),
            Positioned.fill(
              child: IgnorePointer(
                child: ColoredBox(
                  color: context.appColors.service.scrim.withValues(
                    alpha: 0.08,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: _openRoute,
                  child: Container(
                    height: 44,
                    decoration: BoxDecoration(
                      color: context.appColors.static.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      spacing: 8,
                      children: [
                        SizedBox.square(
                          dimension: 20,
                          child: Assets.svg.map02.path.toSvgImage(
                            fit: BoxFit.contain,
                            tintColor: context.appColors.brandSeaBlue,
                          ),
                        ),
                        Text(
                          location.routeTitle ??
                              context.localization.buildRoute,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ).labelMd(color: context.appColors.brandSeaBlue),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
