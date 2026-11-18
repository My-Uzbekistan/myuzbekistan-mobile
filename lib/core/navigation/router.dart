import 'package:domain/domain.dart';
import 'package:finance/finance.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:more/more.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart';
import 'package:travel/travel.dart';
import 'package:uzbekistan_travel/di/injection.dart';
import 'package:basket/basket.dart';
import 'package:favorites/favorites.dart';
import 'package:market_home/market_home.dart';
import 'package:uzbekistan_travel/core/navigation/app_auth_guard.dart';
import 'package:uzbekistan_travel/core/navigation/shells/main_shell.dart';
import 'package:uzbekistan_travel/core/navigation/shells/market_shell.dart';
import 'package:uzbekistan_travel/core/navigation/shells/root_shell.dart';
import 'package:uzbekistan_travel/presentaion/error/page_not_found_page.dart';
import 'package:uzbekistan_travel/presentaion/splash.dart';



part 'home_shell_route.dart';

final FirebaseAnalytics analytics = FirebaseAnalytics.instance;
final FirebaseAnalyticsObserver observer =
    FirebaseAnalyticsObserver(analytics: analytics);
final GoRouter routes = GoRouter(
    navigatorKey: appRootNavigatorKey,
    debugLogDiagnostics: kDebugMode,
    redirect: AppAuthGuard.redirect,
    errorPageBuilder: (context, state) =>
        const NoTransitionPage(child: PageNotFoundPage()),
    observers: [observer],
    overridePlatformDefaultLocation: true,
    initialLocation: AppNavPath.root.splash.path,
    routes: [
      ..._shellRoute,
      ...FeatureTravelRouter.routes,
      ...FeatureFinanceRouter.routes,
      ...FeatureMoreRouter.routes,
      ...FeatureMarketHomeRouter.routes,
      ...FeatureBasketRouter.routes,
      GoRoute(
        path: AppNavPath.root.splash.path,
        name: AppNavPath.root.splash.name,
        builder: (context, state) => SplashScreen(),
      ),
      GoRoute(
        path: AppNavPath.root.invisiblePage.path,
        name: AppNavPath.root.invisiblePage.name,
        pageBuilder: (context, state) =>
            NoTransitionPage(child: InvisiblePage()),
      ),
    ]);

class InvisiblePage extends HookWidget {
  const InvisiblePage({super.key});

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        appRootNavigatorKey.currentContext?.travel.goMain();
      });
      return null;
    }, const []);

    return const Scaffold();
  }
}
