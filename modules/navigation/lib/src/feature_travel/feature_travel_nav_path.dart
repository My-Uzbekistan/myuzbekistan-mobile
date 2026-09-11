part of '../navigation_paths.dart';

class _FeatureTravelNavPath {
  const _FeatureTravelNavPath();

  AppNavPath get travelHome =>
      _NavPathImpl(name: 'feature_travel_home', path: '/home');

  AppNavPath get globalSearch =>
      _NavPathImpl(name: 'feature_travel_global_search', path: '/search');

  AppNavPath get globalSearchResult => _NavPathImpl(
    name: 'feature_travel_global_search_result',
    path: '/search_result',
  );

  AppNavPath get travelServices =>
      _NavPathImpl(name: 'feature_travel_services', path: '/services');

  AppNavPath get travelDetail =>
      _NavPathImpl(name: 'feature_travel_detail', path: '/detail');

  AppNavPath get travelCity =>
      _NavPathImpl(name: 'feature_travel_city', path: '/city');

  AppNavPath get travelContentByCategory => _NavPathImpl(
    name: 'feature_travel_content_by_category',
    path: '/content_by_category',
  );
  AppNavPath get travelHomeGiftPage => _NavPathImpl(
    name: 'feature_travel_home_gift_page',
    path: '/home_gift_page',
  );

  AppNavPath get travelHomeGiftOnboardingPage => _NavPathImpl(
    name: 'feature_travel_home_gift_onboarding_page',
    path: '/home_gift_onboarding_page',
  );
  AppNavPath get travelHomeGiftHistory => _NavPathImpl(
    name: 'feature_travel_home_gift_history',
    path: '/home_gift_history');


  AppNavPath get travelSelectRegion => _NavPathImpl(
    name: 'feature_travel_select_region',
    path: '/select_region',
  );
  AppNavPath get travelOnboarding => _NavPathImpl(
    name: 'feature_travel_onboarding',
    path: '/onboarding',
  );

  AppNavPath get travelPrayerTimes => _NavPathImpl(
    name: 'feature_travel_prayer_times',
    path: '/prayer_times',
  );

  AppNavPath get travelPrayerLocation => _NavPathImpl(
    name: 'feature_travel_prayer_location',
    path: '/prayer_location',
  );

  AppNavPath get travelCatalogInvestments =>
      _NavPathImpl(name: 'feature_travel_investments', path: '/catalog/investments');

  AppNavPath get travelCatalogInvestmentsSearch =>
      _NavPathImpl(name: 'feature_travel_investments_search', path: '/catalog/investments/search');
  AppNavPath get travelCatalogInvestmentsSort =>
      _NavPathImpl(name: 'feature_travel_investments_sort', path: 'sort');
  AppNavPath get travelCatalogInvestmentsPriceSort =>
      _NavPathImpl(name: 'feature_travel_investments_price', path: 'price');
  AppNavPath get travelCatalogInvestmentsSortType =>
      _NavPathImpl(name: 'feature_travel_investments_type', path: 'type');


  ///notifications?notificationId=123
  AppNavPath get notifications =>
      _NavPathImpl(name: 'notifications', path: '/notifications');

  AppNavPath get notificationsDetail =>
      _NavPathImpl(name: 'notificationsDetail', path: 'notificationDetail');

  AppNavPath get imagePreview =>
      _NavPathImpl(name: 'image_preview', path: '/image_preview');

  AppNavPath get detailAllFacilities =>
      _NavPathImpl(name: 'detail_allFacilities', path: 'detail_allFacilities');

  AppNavPath get detailReadMore =>
      _NavPathImpl(name: 'detailReadMore', path: 'detailReadMore');

  AppNavPath get addReviewPage => _NavPathImpl(
    name: 'addReviewPage',
    path: 'addReviewPage',
    authRequired: true,
  );
  AppNavPath get allReviews =>
      _NavPathImpl(name: 'allReviews', path: 'allReviews');


  AppNavPath get premiumOnboardingPage => _NavPathImpl(
    name: 'premium_onboarding',
    path: '/premium_onboarding',
  );

  AppNavPath get premiumCancelPage => _NavPathImpl(
    name: 'premium_cancel',
    path: '/premium_cancel',
  );

  AppNavPath get travelContractDetail => _NavPathImpl(
    name: 'feature_travel_contract_detail',
    path: '/contract_detail',
  );

  AppNavPath get museumHome =>
      _NavPathImpl(name: 'feature_museum_home', path: '/museum');

  AppNavPath get museumSearch =>
      _NavPathImpl(name: 'feature_museum_search', path: '/museum/search');

  AppNavPath get museumList =>
      _NavPathImpl(name: 'feature_museum_list', path: '/museum/list');

  AppNavPath get museumDetail =>
      _NavPathImpl(name: 'feature_museum_detail', path: '/museum/detail');

  AppNavPath get museumPurchase =>
      _NavPathImpl(name: 'feature_museum_purchase', path: '/museum/purchase');

  AppNavPath get museumTickets =>
      _NavPathImpl(name: 'feature_museum_tickets', path: '/museum/tickets');

  AppNavPath get museumFavorites =>
      _NavPathImpl(name: 'feature_museum_favorites', path: '/museum/favorites');

  List<AppNavPath> get values => [
    travelHome,
    globalSearch,
    globalSearchResult,
    travelServices,
    travelDetail,
    travelCity,
    travelContentByCategory,
    travelHomeGiftPage,
    travelHomeGiftOnboardingPage,
    travelHomeGiftHistory,
    travelSelectRegion,
    travelOnboarding,
    travelPrayerTimes,
    travelPrayerLocation,
    travelCatalogInvestments,
    travelCatalogInvestmentsSearch,
    travelCatalogInvestmentsSort,
    travelCatalogInvestmentsPriceSort,
    travelCatalogInvestmentsSortType,
    notifications,
    notificationsDetail,
    imagePreview,
    detailAllFacilities,
    detailReadMore,
    addReviewPage,
    allReviews,
    premiumOnboardingPage,
    premiumCancelPage,
    travelContractDetail,
    museumHome,
    museumSearch,
    museumList,
    museumDetail,
    museumPurchase,
    museumTickets,
    museumFavorites,
  ];
}
