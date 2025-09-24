part of 'router.dart';

final _shellRoute = [
  StatefulShellRoute.indexedStack(
    parentNavigatorKey: appRootNavigatorKey,

    pageBuilder: (context, state, navigationShell) => NoTransitionPage(
        child: ShellPageWrapper(navigationShell: navigationShell)),
    branches: [
      FeatureTravelRouter.shellTravel,
      FeatureFinanceRouter.shellFinance,
      FeatureTravelRouter.shellCatalog,
      // StatefulShellBranch(
      //   routes: [
      //     GoRoute(
      //         path: "/catalog",
      //         name: "catalog",
      //
      //         builder: (context,state){
      //           return CatalogScreen();
      //         }
      //
      //     ),
      //   ],
      // ),
      FeatureMoreRouter.shellMore,

    ],
  )
];

extension ShelIndexEx on ShellPageWrapper {
  ValueNotifier<int> useCurrentIndex() {
    final location = GoRouter.of(useContext()).state.name;
    final currentIndex = useState(0);
    useEffect(() {
      if (location == AppNavPath.travel.travelHome.name) currentIndex.value = 0;
      if (location == AppNavPath.finance.financeHome.name) {
        currentIndex.value = 1;
      }
      if (location == AppNavPath.more.moreHome.name) currentIndex.value = 2;
      return null;
    }, [location]);

    return currentIndex;
  }
}
