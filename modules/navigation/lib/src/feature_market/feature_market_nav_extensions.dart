part of '../navigation_paths.dart';

class FeatureMarketNavExtension {
  final BuildContext _context;

  FeatureMarketNavExtension(BuildContext context) : _context = context;

  void goMarketHome() {
    GoRouter.of(_context).goNamed(AppNavPath.market.marketHome.name);
  }

  Future<T?> pushMarketCatalog<T>() {
    return _context.pushType<T>(AppNavPath.market.marketCatalog);
  }

  Future<T?> pushMarketCategory<T>({
    required int categoryId,
    required String categoryName,
    required int productCount,
  }) {
    return _context.pushType<T>(
      AppNavPath.market.marketCategory,
      queryParameters: {
        "id": "$categoryId",
        "name": categoryName,
        "productCount": "$productCount",
      },
    );
  }

  Future<T?> pushMarketBlock<T>({
    required String blockKey,
    required String title,
  }) {
    return _context.pushType<T>(
      AppNavPath.market.marketCategory,
      queryParameters: {"block": blockKey, "name": title},
    );
  }

  Future<T?> pushMarketProductDetail<T>({required int productId}) {
    return _context.pushType<T>(
      AppNavPath.market.marketProductDetail,
      queryParameters: {"productId": "$productId"},
    );
  }

  Future<T?> pushMarketSearch<T>() {
    return _context.pushType<T>(AppNavPath.market.marketSearch);
  }

  Future<MarketCity?> pushMarketLocation({int? selectedCityId}) {
    return _context.pushType<MarketCity>(
      AppNavPath.market.marketLocation,
      queryParameters: {"cityId": "$selectedCityId"},
    );
  }

  void goMarketFavorites() {
    GoRouter.of(_context).goNamed(AppNavPath.market.marketFavorites.name);
  }

  void goMarketBasket() {
    GoRouter.of(_context).goNamed(AppNavPath.market.marketBasket.name);
  }

  Future<T?> pushMarketCheckout<T>() {
    return _context.pushType<T>(AppNavPath.market.marketCheckout);
  }

  Future<MarketAddress?> pushMarketAddressMap({MarketAddress? address}) {
    return _context.pushType<MarketAddress>(
      AppNavPath.market.marketAddressMap,
      extra: address,
      queryParameters: {"addressId": "${address?.id}"},
    );
  }

  Future<T?> pushMarketOrders<T>({required MarketOrderGroup group}) {
    return _context.pushType<T>(
      AppNavPath.market.marketOrders,
      queryParameters: {"group": group.name},
    );
  }

  Future<T?> pushMarketOrderDetail<T>({required int orderId}) {
    return _context.pushType<T>(
      AppNavPath.market.marketOrderDetail,
      queryParameters: {"id": "$orderId"},
    );
  }

  void goMarketProfile() {
    GoRouter.of(_context).goNamed(AppNavPath.market.marketProfile.name);
  }
}
