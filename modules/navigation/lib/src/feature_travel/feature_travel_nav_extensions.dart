part of '../navigation_paths.dart';

class FeatureTravelNavExtension {
  final BuildContext _context;

  FeatureTravelNavExtension(BuildContext context) : _context = context;

  Future<Object?> pushMain() async {
    return _context.pushType(AppNavPath.travel.travelHome);
  }

  void pushContentByCategoryPage(String categoryName, int categoryId) {
    _context.pushType(
      AppNavPath.travel.travelContentByCategory,
      queryParameters: {
        "categoryName": categoryName,
        "categoryId": "$categoryId",
      },
    );
  }

  void pushFavoritesPage() {
    _context.pushType(
      AppNavPath.travel.travelContentByCategory,
      queryParameters: {"hasFavorites": "true"},
    );
  }

  Future<T?> pushDetailPage<T>({
    ContentDetail? content,
    required int contentId,
  }) {
    return _context.pushType(
      AppNavPath.travel.travelDetail,
      queryParameters: {"contentId": "$contentId"},
      extra: content,
    );
  }

  void goMain() {
    Navigator.of(_context).popUntil((r) => r.isCurrent);
    GoRouter.of(
      appRootNavigatorKey.currentContext!,
    ).goNamed(AppNavPath.travel.travelHome.name);
  }

  Future<T?> pushSelectRegionPage<T>(
    List<Region> regions,
    int selectedRegionId,
  ) {
    return _context.pushNamed(
      AppNavPath.travel.travelSelectRegion.name,
      extra: regions,
      queryParameters: {"selectRegionId": selectedRegionId.toString()},
    );
  }

  Future<T?> pushPrayerTimes<T>() {
    return _context.pushType(AppNavPath.travel.travelPrayerTimes);
  }

  Future<T?> pushPrayerLocation<T>(
    List<PrayerLocation> locations,
    int? selectedLocationId,
  ) {
    return _context.pushNamed(
      AppNavPath.travel.travelPrayerLocation.name,
      extra: locations,
      queryParameters: {"prayerLocationId": "$selectedLocationId"},
    );
  }

  Future<T?> pushOnboarding<T>(dynamic extra) {
    return _context.pushNamed(
      AppNavPath.travel.travelOnboarding.name,
      extra: extra,
    );
  }

  void pushImagePreview(List<String> images) {
    _context.pushType(AppNavPath.travel.imagePreview, extra: images);
  }

  Future<T?> pushServices<T>() {
    return _context.pushType(AppNavPath.travel.travelServices);
  }

  void pushInvestments() {
    _context.pushType(AppNavPath.travel.travelCatalogInvestments);
  }

  void pushNotifications({String? notificationId}) {
    _context.pushType(
      AppNavPath.travel.notifications,
      queryParameters:
          notificationId != null ? {"notificationId": notificationId} : {},
    );
  }

  void pushNotificationsDetail({required NotificationItem item}) {
    _context.pushType(AppNavPath.travel.notificationsDetail, extra: item);
  }

  void replaceWithPremiumCancel({PremiumStatusModel? status}) {
    _context.pushReplacementType(
      AppNavPath.travel.premiumCancelPage,
      extra: status,
    );
  }

  /// Shartnoma detali sahifasini ochadi.
  Future<T?> pushContractDetail<T>({required int contractId}) {
    return _context.pushType(
      AppNavPath.travel.travelContractDetail,
      queryParameters: {"contractId": "$contractId"},
    );
  }
}
