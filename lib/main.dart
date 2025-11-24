import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:finance/finance.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:more/more.dart';
import 'package:navigation/navigation.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:shared/shared.dart';
import 'package:travel/travel.dart';
import 'package:uzbekistan_travel/core/navigation/router.dart';
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
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await Hive.initFlutter();
  await configureInjection();
  NotificationService().subscribeToTopic();
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
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
    WidgetsFlutterBinding.ensureInitialized().addPostFrameCallback((t) {
      Future.delayed(const Duration(milliseconds: 2000), () {
        NotificationService().init();
      });
      VersionChecker.check(context, canUpdate: (versionStatus) {
        appRootNavigatorKey.currentContext?.pushNamed(
            AppNavPath.more.forceUpdate.name,
            queryParameters: {"appStoreLink": versionStatus.appStoreLink});
      });
    });

    GlobalHandler().setRefreshListener(() async {
      appRootNavigatorKey.currentContext!.goNamed("invisiblePage");
    });

    GlobalHandler().setUnauthorizedListener(() async {
      appRootNavigatorKey.currentContext!.goNamed(AppNavPath.more.authPage.name,
          queryParameters: {"slideAlign": "vertical"});
    });
    super.initState();
  }

  void openNotification() {}

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
