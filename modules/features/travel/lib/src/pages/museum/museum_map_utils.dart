import 'package:shared/shared.dart';

Future<void> museumOpenMap({
  required double latitude,
  required double longitude,
  required String title,
}) async {
  final maps = await MapLauncher.installedMaps;
  if (maps.isEmpty) {
    await LauncherUtils.urlLauncher(
      "https://maps.google.com/?q=$latitude,$longitude",
      mode: LaunchMode.externalApplication,
    );
    return;
  }
  await maps.first.showMarker(
    coords: Coords(latitude, longitude),
    title: title,
  );
}
