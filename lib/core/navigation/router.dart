import 'package:domain/domain.dart';
import 'package:finance/finance.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:more/more.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart';
import 'package:travel/travel.dart';
import 'package:uzbekistan_travel/di/injection.dart';
import 'package:uzbekistan_travel/presentaion/experiment/experiment.dart';
import 'package:uzbekistan_travel/presentaion/shell_wrapper/shell_wrapper.dart';
import 'package:uzbekistan_travel/presentaion/splash.dart';

import '../../presentaion/catalog/catalog.dart';


part 'home_shell_route.dart';

final FirebaseAnalytics analytics = FirebaseAnalytics.instance;
final FirebaseAnalyticsObserver observer =
    FirebaseAnalyticsObserver(analytics: analytics);
final GoRouter routes = GoRouter(
    navigatorKey: appRootNavigatorKey,
    debugLogDiagnostics: true,
    redirect: (context, state) {
      if ([
        AppNavPath.finance.financeCards.name,
        AppNavPath.finance.financePayment.name,
        AppNavPath.finance.paymentHistoryPage.name,
        AppNavPath.travel.addReviewPage.name,
      ].contains(state.topRoute?.name)) {
        if (getIt<SecurityStorage>().getAccessToken() == null) {
          return "${AppNavPath.more.authPage.path}?slideAlign=vertical";
        }
      }
      return null;
    },
    observers: [observer],
    initialLocation: "/splash",
    // initialLocation: "/experiment",
    routes: [
      ..._shellRoute,
      ...FeatureTravelRouter.routes,
      ...FeatureFinanceRouter.routes,
      ...FeatureMoreRouter.routes,
      GoRoute(
        path: "/splash",
        name: "splash",
        builder: (context, state) => SplashScreen(),
      ),
      GoRoute(
        path: "/invisiblePage",
        name: "invisiblePage",
        pageBuilder: (context, state) =>
            NoTransitionPage(child: InvisiblePage()),
      ),
      GoRoute(
        path: "/experiment",
        name: "experiment",
        builder: (context, state) => Experiment(),
      ),
    ]);

class InvisiblePage extends StatefulWidget {
  const InvisiblePage({super.key});

  @override
  State<InvisiblePage> createState() => _InvisiblePageState();
}

class _InvisiblePageState extends State<InvisiblePage> {
  @override
  void initState() {
    // TODO: implement initState
    WidgetsFlutterBinding.ensureInitialized().addPostFrameCallback((t) {
      appRootNavigatorKey.currentContext?.travel.goMain();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
