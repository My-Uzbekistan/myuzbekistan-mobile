import 'dart:io';

import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';
import 'package:travel/src/core/extension.dart';

class LocationWidget extends HookWidget {
  final String title;
  final List<double> coordinates;
  final String? address;
  final String? distanceText;

  const LocationWidget({
    super.key,
    required this.title,
    this.coordinates = const [],
    this.address,
    this.distanceText,
  });

  void openDirections(BuildContext context) {
    if (coordinates.isEmpty) return;
    if (Platform.isIOS) {
      openMapsSheet(
        context,
        Coords(coordinates.last, coordinates.first),
        address: address,
      );
    } else {
      LauncherUtils.urlLauncher(
        "geo:${coordinates.last},${coordinates.first}&q=$address",
        mode: LaunchMode.externalApplication,
      );
    }
  }

  openMapsSheet(context, Coords coords, {String? address}) async {
    try {
      final availableMaps = await MapLauncher.installedMaps;
      showModalBottomSheet(
        context: context,
        backgroundColor: Colors.transparent,
        builder: (BuildContext context) {
          return SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                spacing: 8,
                children: [
                  Container(
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      color: context.appColors.background.elevation1,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Padding(
                            padding: EdgeInsets.all(16),
                            child: Text(context.localization.map_open_in).h3(),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 8,
                          ).copyWith(bottom: 16),
                          child: Wrap(
                            crossAxisAlignment: WrapCrossAlignment.start,
                            runSpacing: 12,
                            spacing: 12,
                            children: <Widget>[
                              for (var map in availableMaps)
                                GestureDetector(
                                  onTap: () {
                                    map.showMarker(
                                      coords: coords,
                                      title: address ?? "",
                                    );
                                  },
                                  behavior: HitTestBehavior.opaque,
                                  child: Column(
                                    spacing: 4,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(12),
                                        child: SvgPicture.asset(
                                          map.icon,
                                          height: 56.0,
                                          width: 56.0,
                                        ),
                                      ),
                                      Text(
                                        map.mapName.split(" ").first,
                                      ).bodyMd(),
                                    ],
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: double.maxFinite,
                    child: FilledButton.tonal(
                      style: FilledButton.styleFrom(
                        backgroundColor: context.appColors.background.elevation1
                            .withValues(alpha: 0.98),
                        minimumSize: Size.fromHeight(56),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      onPressed: () {
                        context.pop();
                      },
                      child: Text(
                        context.localization.cancel,
                      ).bodyLg(color: context.appColors.brand),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      );
    } catch (_) {}
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: Column(
            spacing: 8,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(width: double.infinity, child: Text(title).h2()),
              if (address != null)
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 8,
                  children: [
                    SizedBox(
                      height: 24,
                      width: 24,
                      child: Assets.svg.pinLocationLine.path.toSvgImage(
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
                            address!,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                          ).bodyMd(),
                          if (distanceText != null)
                            Text(
                              context.localization.distanceFromUs(distanceText!),
                            ).bodyMd(
                              color: context.appColors.textIconColor.tertiary,
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
            ],
          ),
        ),
        if (coordinates.isNotEmpty)
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: context.appColors.stroke.nonOpaque,
                  width: 1,
                ),
              ),
              height: 112,
              width: double.infinity,
              child: GoogleMap(
                key: ValueKey(coordinates),
                scrollGesturesEnabled: false,
                zoomGesturesEnabled: false,
                rotateGesturesEnabled: false,
                tiltGesturesEnabled: false,
                zoomControlsEnabled: false,
                onTap: (_) => openDirections(context),
                circles: {
                  Circle(
                    circleId: CircleId("marker"),
                    center: LatLng(coordinates.last, coordinates.first),
                    radius: 24,
                    strokeWidth: 0,
                    fillColor: context.appColors.colors.orange,
                  ),
                  Circle(
                    circleId: CircleId("marker_area"),
                    center: LatLng(coordinates.last, coordinates.first),
                    radius: 180,
                    strokeWidth: 0,
                    fillColor: context.appColors.colors.orange.withValues(
                      alpha: 0.16,
                    ),
                  ),
                },
                myLocationButtonEnabled: false,
                initialCameraPosition: CameraPosition(
                  target: LatLng(coordinates.last, coordinates.first),
                  zoom: 15,
                ),
              ),
            ),
          ),
        if (coordinates.isNotEmpty)
          Padding(
            padding: const EdgeInsets.only(top: 12),
            child: AppActionButton(
              type: ActionButtonType.secondary,
              actionText: context.localization.buildRoute,
              onPressed: () => openDirections(context),
            ),
          ),
      ],
    );
  }
}
