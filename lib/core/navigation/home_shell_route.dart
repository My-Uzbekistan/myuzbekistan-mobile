part of 'router.dart';

final _shellRoute = [
  MainShell.route(
    branches: [
      FeatureTravelRouter.shellTravel,
      FeatureFinanceRouter.shellFinance,
      FeatureMoreRouter.shellMore,
    ],
  ),
  MarketShell.route(
    branches: [
      FeatureMarketHomeRouter.shellMarketHome,
      FeatureFavoritesRouter.shellFavorites,
      FeatureBasketRouter.shellBasket,
      FeatureMarketHomeRouter.shellMarketProfile,
    ],
  ),
];
