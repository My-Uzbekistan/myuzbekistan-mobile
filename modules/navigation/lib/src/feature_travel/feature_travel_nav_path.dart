part of '../navigation_paths.dart';

class _FeatureTravelNavPath {
  const _FeatureTravelNavPath();

  AppNavPath get travelHome =>
      _NavPathImpl(name: 'feature_travel_home', path: '/home');

  AppNavPath get travelDetail =>
      _NavPathImpl(name: 'feature_travel_detail', path: '/detail');

  AppNavPath get travelContentByCategory => _NavPathImpl(
    name: 'feature_travel_content_by_category',
    path: '/content_by_category',
  );

  AppNavPath get travelSelectRegion => _NavPathImpl(
    name: 'feature_travel_select_region',
    path: '/select_region',
  );

  ///notifications?notificationId=123
  AppNavPath get notifications =>
      _NavPathImpl(name: 'notifications', path: '/notifications');

  AppNavPath get notificationsDetail =>
      _NavPathImpl(name: 'notificationsDetail', path: 'notificationDetail');

  AppNavPath get imagePreview =>
      _NavPathImpl(name: 'image_preview', path: '/image_preview');
}
