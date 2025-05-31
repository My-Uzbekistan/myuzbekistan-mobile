part of '../navigation_paths.dart';

class FeatureTravelNavExtension {
  final BuildContext _context;

  FeatureTravelNavExtension(BuildContext context) : _context = context;

  Future<Object?> pushMain() async {
    return _context.pushType(AppNavPath.travel.travelHome);
  }
}
