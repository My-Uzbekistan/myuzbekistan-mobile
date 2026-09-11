part of '../navigation_paths.dart';

class _FeatureMarketNavPath {
  const _FeatureMarketNavPath();

  AppNavPath get marketHome =>
      _NavPathImpl(name: 'feature_market_home', path: '/market');

  AppNavPath get marketCatalog =>
      _NavPathImpl(name: 'feature_market_catalog', path: '/market/catalog');

  AppNavPath get marketCategory =>
      _NavPathImpl(name: 'feature_market_category', path: '/market/category');

  AppNavPath get marketProductDetail => _NavPathImpl(
    name: 'feature_market_product_detail',
    path: '/market/product',
  );

  AppNavPath get marketSearch =>
      _NavPathImpl(name: 'feature_market_search', path: '/market/search');

  AppNavPath get marketLocation =>
      _NavPathImpl(name: 'feature_market_location', path: '/market/location');

  AppNavPath get marketFavorites => _NavPathImpl(
    name: 'feature_market_favorites',
    path: '/market/favorites',
  );

  AppNavPath get marketBasket =>
      _NavPathImpl(name: 'feature_market_basket', path: '/market/basket');

  AppNavPath get marketCheckout =>
      _NavPathImpl(name: 'feature_market_checkout', path: '/market/checkout');

  AppNavPath get marketAddressMap => _NavPathImpl(
    name: 'feature_market_address_map',
    path: '/market/address-map',
  );

  AppNavPath get marketOrders => _NavPathImpl(
    name: 'feature_market_orders',
    path: '/market/orders',
    authRequired: true,
  );

  AppNavPath get marketOrderDetail => _NavPathImpl(
    name: 'feature_market_order_detail',
    path: '/market/order',
    authRequired: true,
  );

  AppNavPath get marketProfile =>
      _NavPathImpl(name: 'feature_market_profile', path: '/market/profile');

  List<AppNavPath> get values => [
    marketHome,
    marketCatalog,
    marketCategory,
    marketProductDetail,
    marketSearch,
    marketLocation,
    marketFavorites,
    marketBasket,
    marketCheckout,
    marketAddressMap,
    marketOrders,
    marketOrderDetail,
    marketProfile,
  ];
}
