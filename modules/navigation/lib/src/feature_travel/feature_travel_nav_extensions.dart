part of '../navigation_paths.dart';

class FeatureTravelNavExtension {
  final BuildContext _context;

  FeatureTravelNavExtension(BuildContext context) : _context = context;

  Future<Object?> pushMain() async {
    return _context.pushType(AppNavPath.travel.travelHome);
  }
  void pushContentByCategoryPage(String categoryName, int categoryId) {
    _context.pushType(AppNavPath.travel.travelContentByCategory, queryParameters: {
      "categoryName": categoryName,
      "categoryId": "$categoryId",
    });
  }

  void pushFavoritesPage() {
    _context.pushType(AppNavPath.travel.travelContentByCategory, queryParameters: {
      "hasFavorites": "true",
    });
  }

  Future<T?> pushDetailPage<T>(int contentId) {
    return _context.pushType(AppNavPath.travel.travelDetail, queryParameters: {
      "contentId": "$contentId",
    });
  }

  void goMain() {
    Navigator.of(_context).popUntil((r) => r.isCurrent);
    _context.go(AppNavPath.travel.travelHome.path);
  }

  Future<T?> pushSelectRegionPage<T>(
      List<Region> regions,
      int selectedRegionId,
      ) {
    return _context.pushNamed(AppNavPath.travel.travelSelectRegion.name,
        extra: regions,
        queryParameters: {"selectRegionId": selectedRegionId.toString()});
  }

  void pushImagePreview(List<String> images) {
    _context.pushType(AppNavPath.travel.imagePreview, extra: images);
  }



}
