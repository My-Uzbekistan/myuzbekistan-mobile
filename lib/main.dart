import 'dart:convert';

import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:basket/basket.dart';
import 'package:favorites/favorites.dart';
import 'package:finance/finance.dart';
import 'package:market_home/market_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:more/more.dart';
import 'package:navigation/navigation.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:shared/shared.dart';
import 'package:travel/travel.dart';
import 'package:uzbekistan_travel/core/navigation/router.dart';
import 'package:uzbekistan_travel/upgrader/mock_upgrader.dart';
import 'package:uzbekistan_travel/upgrader/upgrader_global.dart';
import 'di/injection.dart';
import 'firebase_options.dart';
import 'generated/locale/app_localizations.dart';

AppLocale? currentLocale;

@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LiquidGlassWidgets.initialize();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await Hive.initFlutter();
  await DeviceInfoManager().init();
  await configureInjection();
  NotificationService().subscribeToTopic();
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  // Edge-to-edge'ni GLOBAL yoqamiz: tizim nav paneli transparent bo'lib,
  // kontent/gradient uning ortiga chizilishi uchun. Splash o'zi ham buni
  // yoqadi, lekin bu yerda global yoqilgani boshqa ekranlarga ham kafolat beradi.
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    GlobalHandler().setRefreshListener(() async {
      appRootNavigatorKey.currentContext!.goNamed("invisiblePage");
    });

    GlobalHandler().setUnauthorizedListener(() async {
      appRootNavigatorKey.currentContext!.goNamed(AppNavPath.more.authPage.name,
          queryParameters: {"slideAlign": "vertical"});
    });
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((t) {
      Future.delayed(const Duration(milliseconds: 2000), () {
        NotificationService().init();
      });
    });
    init();
    global.globalInit();
  }

  Future<void> init() async {
    final remoteConfig = FirebaseRemoteConfig.instance;
    remoteConfig.setConfigSettings(  RemoteConfigSettings(
      fetchTimeout: const Duration(hours: 12),
      minimumFetchInterval: const Duration(hours: 1), // For testing
    ),);

    final jsonString = await rootBundle.loadString(
      'assets/remote_config_defaults.json',
    );
    final Map<String, dynamic> jsonMap = json.decode(jsonString);
    await remoteConfig.setDefaults(jsonMap);

    await FirebaseRemoteConfig.instance.fetchAndActivate();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return OverlaySupport.global(
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => getIt<AppSettingsBloc>(),
          ),
          BlocProvider(
            create: (context) => getIt<NotificationCountCubit>(),
          ),
          BlocProvider(
            create: (context) => getIt<GiftBloc>(),
          ),
        ],
        child: BlocBuilder<AppSettingsBloc, AppSettingsBlocState>(
          builder: (context, state) {
            return MaterialApp.router(
              debugShowCheckedModeBanner: false,
              theme: AppColorTheme.lightTheme,
              darkTheme: AppColorTheme.darkTheme,
              themeMode: state.mode,
              localizationsDelegates: [
                ...AppLocalizations.localizationsDelegates,
                ...FeatureTravelLocalizations.localizationsDelegates,
                ...FeatureMoreLocalizations.localizationsDelegates,
                ...FeatureFinanceLocalizations.localizationsDelegates,
                ...FeatureMarketHomeLocalizations.localizationsDelegates,
                ...FeatureFavoritesLocalizations.localizationsDelegates,
                ...FeatureBasketLocalizations.localizationsDelegates,
                ...CoreAppLocalizations.localizationsDelegates
              ],
              supportedLocales: AppLocalizations.supportedLocales,
              locale: state.appLocale?.locale,
              title: "MyUzbekistan",
              builder: (context, child) {
                currentLocale = state.appLocale;
                Intl.defaultLocale =
                    state.appLocale?.locale.languageCode.toString() ?? 'en';
                return AnnotatedRegion<SystemUiOverlayStyle>(
                    value: context.systemUiOverlyStyle,
                    child: MediaQuery(
                        data: MediaQuery.of(context).copyWith(
                          textScaler: TextScaler.linear(1.0),
                        ),
                        child: child!));
              },
              routerConfig: routes,
            );
          },
        ),
      ),
    );
  }
}
