import 'dart:io';

import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:finance/finance.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:more/more.dart';
import 'package:navigation/navigation.dart';
import 'package:travel/travel.dart';
import 'package:uzbekistan_travel/di/injection.dart';
import 'package:uzbekistan_travel/presentaion/shell_wrapper/shell_wrapper.dart';
import 'package:uzbekistan_travel/presentaion/splash.dart';

part 'home_shell_route.dart';

// final appRootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();
final FirebaseAnalytics analytics = FirebaseAnalytics.instance;
final FirebaseAnalyticsObserver observer =
    FirebaseAnalyticsObserver(analytics: analytics);
final GoRouter routes = GoRouter(

    redirect: (context, state) {
      if([
        AppNavPath.finance.financeCards.name,
        AppNavPath.finance.financePayment.name,
      ].contains(state.topRoute?.name)){
        if(getIt<SecurityStorage>().getAccessToken()==null) {
          return AppNavPath.more.authPage.path;
        }
      }
      return null;
    },
    observers: [observer],
    navigatorKey: appRootNavigatorKey,
    initialLocation: "/splash",
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
    ]);
