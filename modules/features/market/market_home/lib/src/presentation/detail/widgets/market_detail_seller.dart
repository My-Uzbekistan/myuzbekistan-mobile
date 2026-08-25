import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:market_home/src/core/extension.dart';
import 'package:shared/shared.dart';

class MarketDetailSeller extends StatelessWidget {
  const MarketDetailSeller({super.key, required this.seller});

  final MarketSeller seller;

  @override
  Widget build(BuildContext context) {
    final distanceText = seller.distanceMeters.formatDistance(
      meterLabel: context.localization.market_distance_meter,
      kmLabel: context.localization.market_distance_km,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 12,
      children: [
        _row(
          context,
          glyphPath: Assets.svg.iconShop.path,
          title: seller.name,
          subtitle: seller.type.isEmpty ? null : seller.type,
        ),
        if (seller.address.orEmpty().isNotEmpty)
          _row(
            context,
            glyphPath: Assets.svg.pinLocationLine.path,
            title: seller.address!,
            subtitle: distanceText == null
                ? null
                : context.localization.market_detail_distance_from_us(
                    distanceText,
                  ),
          ),
        if (seller.hasCoordinates) _map(context),
      ],
    );
  }

  Widget _row(
    BuildContext context, {
    required String glyphPath,
    required String title,
    String? subtitle,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 8,
      children: [
        SizedBox.square(
          dimension: 24,
          child: glyphPath.toSvgImage(
            fit: BoxFit.contain,
            tintColor: context.appColors.textIconColor.primary,
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 4,
            children: [
              Text(
                title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ).bodyMd(color: context.appColors.textIconColor.primary),
              if (subtitle != null)
                Text(
                  subtitle,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ).bodyMd(color: context.appColors.textIconColor.tertiary),
            ],
          ),
        ),
      ],
    );
  }

  Widget _map(BuildContext context) {
    final target = LatLng(seller.latitude!, seller.longitude!);

    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: SizedBox(
        height: 172,
        width: double.infinity,
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
                    circleId: const CircleId("seller_marker"),
                    center: target,
                    radius: 24,
                    strokeWidth: 0,
                    fillColor: context.appColors.colors.orange,
                  ),
                  Circle(
                    circleId: const CircleId("seller_marker_area"),
                    center: target,
                    radius: 180,
                    strokeWidth: 0,
                    fillColor: context.appColors.colors.orange.withValues(
                      alpha: 0.16,
                    ),
                  ),
                },
                initialCameraPosition: CameraPosition(target: target, zoom: 15),
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
                          child: Assets.svg.tabIconMap.path.toSvgImage(
                            fit: BoxFit.contain,
                            tintColor: context.appColors.brandSeaBlue,
                          ),
                        ),
                        Text(
                          context.localization.market_detail_build_route,
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

  Future<void> _openRoute() async {
    if (!seller.hasCoordinates) return;
    final maps = await MapLauncher.installedMaps;
    final map = maps.firstOrNull;
    if (map == null) return;
    await map.showDirections(
      destination: Coords(seller.latitude!, seller.longitude!),
      destinationTitle: seller.address,
    );
  }
}
