part of 'router.dart';

final _shellRoute = [
  RootShell.route(
    branches: [
      StatefulShellBranch(
        routes: [
          MainShell.route(
            branches: [
              FeatureTravelRouter.shellTravel,
              FeatureFinanceRouter.shellFinance,
              FeatureMoreRouter.shellMore,
            ],
          ),
        ],
      ),
      StatefulShellBranch(
        routes: [
          MarketShell.route(
            branches: [
              FeatureMarketHomeRouter.shellMarketHome,
              FeatureFavoritesRouter.shellFavorites,
              FeatureBasketRouter.shellBasket,
              FeatureMarketHomeRouter.shellMarketProfile,
            ],
          ),
        ],
      ),
    ],
  ),
];
