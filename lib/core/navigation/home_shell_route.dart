part of 'router.dart';

final _shellRoute = [
  StatefulShellRoute.indexedStack(
    parentNavigatorKey: appRootNavigatorKey,
    builder: (context, state, navShell) =>
        ShellPageWrapper(navigationShell: navShell),
    branches: [FeatureTravelRouter.shellTravel, FeatureMoreRouter.shellMore],
  )
];

extension ShelIndexEx on ShellPageWrapper {
  ValueNotifier<int> useCurrentIndex() {
    final location = GoRouter.of(useContext()).state.name;
    final currentIndex = useState(0);
    useEffect(() {
      if (location == AppNavPath.travel.travelHome.name) currentIndex.value = 0;
      if (location == AppNavPath.more.moreHome.name) currentIndex.value = 1;
      return null;
    }, [location]);

    return currentIndex;
  }
}
