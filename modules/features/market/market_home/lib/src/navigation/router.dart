import 'package:domain/domain.dart';
import 'package:market_home/src/di/injection.dart';
import 'package:market_home/src/navigation/market_search_transition.dart';
import 'package:market_home/src/presentation/catalog/bloc/market_catalog_bloc.dart';
import 'package:market_home/src/presentation/catalog/market_catalog_page.dart';
import 'package:market_home/src/presentation/category/bloc/market_category_bloc.dart';
import 'package:market_home/src/presentation/category/market_category_page.dart';
import 'package:market_home/src/presentation/detail/bloc/market_product_detail_bloc.dart';
import 'package:market_home/src/presentation/detail/market_product_detail_page.dart';
import 'package:market_home/src/presentation/home/bloc/market_home_bloc.dart';
import 'package:market_home/src/presentation/home/market_home_page.dart';
import 'package:market_home/src/presentation/location/bloc/market_location_bloc.dart';
import 'package:market_home/src/presentation/location/market_location_page.dart';
import 'package:market_home/src/presentation/order_detail/bloc/market_order_detail_bloc.dart';
import 'package:market_home/src/presentation/order_detail/market_order_detail_page.dart';
import 'package:market_home/src/presentation/orders/bloc/market_orders_bloc.dart';
import 'package:market_home/src/presentation/orders/market_orders_page.dart';
import 'package:market_home/src/presentation/profile/market_profile_page.dart';
import 'package:market_home/src/presentation/search/bloc/market_search_bloc.dart';
import 'package:market_home/src/presentation/search/market_search_page.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart';

mixin FeatureMarketHomeRouter {
  static final routes = [
    GoRoute(
      path: AppNavPath.market.marketCatalog.path,
      name: AppNavPath.market.marketCatalog.name,
      pageBuilder: (context, state) => buildSlideTransitionPage(
        child: BlocProvider(
          create: (context) =>
              getIt<MarketCatalogBloc>()..add(MarketCatalogEvent.loadData()),
          child: const MarketCatalogPage(),
        ),
        context: context,
        state: state,
      ),
    ),
    GoRoute(
      path: AppNavPath.market.marketCategory.path,
      name: AppNavPath.market.marketCategory.name,
      pageBuilder: (context, state) => buildSlideTransitionPage(
        child: BlocProvider(
          create: (context) => getIt<MarketCategoryBloc>()
            ..add(
              MarketCategoryEvent.start(
                categoryId: parseInt(state.uri.queryParameters["id"]),
                block: parseString(state.uri.queryParameters["block"]),
                categoryName:
                    parseString(state.uri.queryParameters["name"]) ?? "",
                productCount:
                    parseInt(state.uri.queryParameters["productCount"]) ?? 0,
              ),
            ),
          child: const MarketCategoryPage(),
        ),
        context: context,
        state: state,
      ),
    ),
    GoRoute(
      path: AppNavPath.market.marketProductDetail.path,
      name: AppNavPath.market.marketProductDetail.name,
      pageBuilder: (context, state) => buildSlideTransitionPage(
        child: BlocProvider(
          create: (context) => getIt<MarketProductDetailBloc>()
            ..add(
              MarketProductDetailEvent.start(
                productId:
                    parseInt(state.uri.queryParameters["productId"]) ?? 0,
              ),
            ),
          child: const MarketProductDetailPage(),
        ),
        context: context,
        state: state,
      ),
    ),
    GoRoute(
      path: AppNavPath.market.marketOrders.path,
      name: AppNavPath.market.marketOrders.name,
      pageBuilder: (context, state) => buildSlideTransitionPage(
        child: BlocProvider(
          create: (context) => getIt<MarketOrdersBloc>()
            ..add(
              MarketOrdersEvent.start(
                group:
                    MarketOrderGroup.values.firstWhere(
                      (e) =>
                          e.name ==
                          parseString(state.uri.queryParameters["group"]),
                      orElse: () => MarketOrderGroup.active,
                    ),
              ),
            ),
          child: const MarketOrdersPage(),
        ),
        context: context,
        state: state,
      ),
    ),
    GoRoute(
      path: AppNavPath.market.marketOrderDetail.path,
      name: AppNavPath.market.marketOrderDetail.name,
      pageBuilder: (context, state) => buildSlideTransitionPage(
        child: BlocProvider(
          create: (context) => getIt<MarketOrderDetailBloc>()
            ..add(
              MarketOrderDetailEvent.start(
                orderId: parseInt(state.uri.queryParameters["id"]) ?? 0,
              ),
            ),
          child: const MarketOrderDetailPage(),
        ),
        context: context,
        state: state,
      ),
    ),
    GoRoute(
      path: AppNavPath.market.marketLocation.path,
      name: AppNavPath.market.marketLocation.name,
      pageBuilder: (context, state) => buildSlideTransitionPage(
        child: BlocProvider(
          create: (context) => getIt<MarketLocationBloc>()
            ..add(
              MarketLocationEvent.start(
                selectedCityId: parseInt(state.uri.queryParameters["cityId"]),
              ),
            ),
          child: const MarketLocationPage(),
        ),
        context: context,
        state: state,
      ),
    ),
    GoRoute(
      path: AppNavPath.market.marketSearch.path,
      name: AppNavPath.market.marketSearch.name,
      pageBuilder: (context, state) => buildMarketSearchTransitionPage(
        state: state,
        child: BlocProvider(
          create: (context) =>
              getIt<MarketSearchBloc>()..add(MarketSearchEvent.loadInitial()),
          child: const MarketSearchPage(),
        ),
      ),
    ),
  ];

  static final shellMarketHome = StatefulShellBranch(
    routes: [
      GoRoute(
        path: AppNavPath.market.marketHome.path,
        name: AppNavPath.market.marketHome.name,
        builder: (context, state) => BlocProvider(
          create: (context) =>
              getIt<MarketHomeBloc>()..add(MarketHomeEvent.loadData()),
          child: const MarketHomePage(),
        ),
      ),
    ],
  );

  static final shellMarketProfile = StatefulShellBranch(
    routes: [
      GoRoute(
        path: AppNavPath.market.marketProfile.path,
        name: AppNavPath.market.marketProfile.name,
        builder: (context, state) => const MarketProfilePage(),
      ),
    ],
  );
}
