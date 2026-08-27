import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:travel/src/pages/museum/museum_map_utils.dart';

class MuseumDetailLocation extends StatelessWidget {
  const MuseumDetailLocation({super.key, required this.detail});

  final MuseumDetail detail;

  @override
  Widget build(BuildContext context) {
    final latitude = detail.latitude;
    final longitude = detail.longitude;
    if (latitude == null || longitude == null) return const SizedBox.shrink();

    final target = LatLng(latitude, longitude);

    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Container(
        height: 172,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: context.appColors.stroke.nonOpaque),
        ),
        child: GoogleMap(
          key: ValueKey(detail.id),
          scrollGesturesEnabled: false,
          zoomGesturesEnabled: false,
          rotateGesturesEnabled: false,
          tiltGesturesEnabled: false,
          zoomControlsEnabled: false,
          myLocationButtonEnabled: false,
          onTap:
              (_) => museumOpenMap(
                latitude: latitude,
                longitude: longitude,
                title: detail.title,
              ),
          circles: {
            Circle(
              circleId: const CircleId("museum_marker"),
              center: target,
              radius: 24,
              strokeWidth: 0,
              fillColor: context.appColors.colors.green,
            ),
            Circle(
              circleId: const CircleId("museum_marker_area"),
              center: target,
              radius: 180,
              strokeWidth: 0,
              fillColor: context.appColors.colors.green.withValues(alpha: 0.16),
            ),
          },
          initialCameraPosition: CameraPosition(target: target, zoom: 15),
        ),
      ),
    );
  }
}
