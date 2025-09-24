import 'dart:io';

import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';
import 'package:travel/src/core/extension.dart';
import 'package:travel/src/pages/detail/widget/underline_button.dart';

class LocationWidget extends HookWidget {
  final String title;
  final List<double> coordinates;
  final String? address;

  const LocationWidget({
    super.key,
    required this.title,
    this.coordinates = const [],
    this.address,
  });

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
          padding: EdgeInsets.only(bottom: 12),
          child: Column(
            spacing: 8,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 24),
                child: Text(title).h2(),
              ),

              if (address != null)
                Text(
                  address!,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ).bodyMd(color: context.appColors.textIconColor.secondary),
            ],
          ),
        ),

        if (coordinates.isNotEmpty)
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(24),
              child: AspectRatio(
                aspectRatio: 343 / 230,
                child: GoogleMap(
                  key: ValueKey(coordinates),
                  scrollGesturesEnabled: true,
                  zoomGesturesEnabled: false,
                  zoomControlsEnabled: false,

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
          ),
        if (coordinates.isNotEmpty)
          DetailUnderLineButton(
            actionText: context.localization.buildRoute,
            onTap: () async {
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
            },
          ),
      ],
    );
  }
}
