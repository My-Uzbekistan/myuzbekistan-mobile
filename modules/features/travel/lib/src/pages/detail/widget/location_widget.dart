import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

import 'items_title.dart';

class LocationWidget extends HookWidget {
  final String title;
  final List<double> coordinates;
  final String? address;

  const LocationWidget(
      {super.key,
      required this.title,
      this.coordinates = const [],
      this.address});

  @override
  Widget build(BuildContext context) {
    final markerIconFuture = useMemoized(
      () => BitmapDescriptor.asset(
          const ImageConfiguration(size: Size(20, 20)), // O‘lcham
          Assets.pngSosok,
          package: "component_res" // Rasm yo‘li
          ),
    );
    final markerIcon = useFuture(markerIconFuture);

    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      ItemsTitle(title: title),
      if (coordinates.isNotEmpty)
        Container(
          height: 136,
          alignment: Alignment.topCenter,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(24),
            child: SizedBox(
              height: 120,
              child: GoogleMap(
                  key: ValueKey(coordinates),
                  scrollGesturesEnabled: true,
                  zoomGesturesEnabled: false,
                  zoomControlsEnabled: false,
                  markers: markerIcon.hasData
                      ? {
                          Marker(
                              markerId: MarkerId("Location"),
                              position: LatLng(
                                coordinates.last,
                                coordinates.first,
                              ),
                              icon: markerIcon.data!)
                        }
                      : {},
                  myLocationButtonEnabled: false,
                  initialCameraPosition: CameraPosition(
                      target: LatLng(
                        coordinates.last,
                        coordinates.first,
                      ),
                      zoom: 15)),
            ),
          ),
        ),
      if (address != null)
        Padding(
          padding: EdgeInsets.only(bottom: 16),
          child: Row(
            spacing: 12,
            children: [
              Assets.svgPinLocationLine.toSvgImage(
                  colorFilter: ColorFilter.mode(
                      context.appColors.textIconColor.primary, BlendMode.srcIn),
                  height: 24,
                  width: 24),
              Flexible(
                child: Text(
                  address!,
                  style: CustomTypography.bodyLg,
                ),
              ),
            ],
          ),
        )
    ]);
  }
}
