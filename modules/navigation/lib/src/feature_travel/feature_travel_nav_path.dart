part of '../navigation_paths.dart';

class _FeatureTravelNavPath {
  const _FeatureTravelNavPath();

  AppNavPath get travelHome =>
      _NavPathImpl(name: 'feature_travel_home', path: '/');
  AppNavPath get travelDetail =>
      _NavPathImpl(name: 'feature_travel_detail', path: '/detail');
  AppNavPath get travelContentByCategory =>
      _NavPathImpl(name: 'feature_travel_content_by_category', path: '/content_by_category');
  AppNavPath get travelSelectRegion =>
      _NavPathImpl(name: 'feature_travel_select_region', path: '/select_region');


  AppNavPath get imagePreview =>
      _NavPathImpl(name: 'image_preview', path: '/image_preview');

}
