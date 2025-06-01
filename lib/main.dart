import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:more/more.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:travel/travel.dart';
import 'package:uzbekistan_travel/core/navigation/router.dart';
import 'di/injection.dart';
import 'firebase_options.dart';
import 'generated/locale/app_localizations.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await Hive.initFlutter();
  await configureInjection();
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
    super.initState();
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
        ],
        child: BlocBuilder<AppSettingsBloc, AppSettingsBlocState>(
          builder: (context, state) {
            return MaterialApp.router(
              debugShowCheckedModeBanner: false,
              title: 'Flutter Demo',
              theme: AppColorTheme.lightTheme,
              darkTheme: AppColorTheme.darkTheme,
              localizationsDelegates: [
                ...AppLocalizations.localizationsDelegates,
                ...FeatureTravelLocalizations.localizationsDelegates,
                ...FeatureMoreLocalizations.localizationsDelegates
              ],
              supportedLocales: AppLocalizations.supportedLocales,
              locale: state.appLocale.locale,
              themeMode: state.mode,
              builder: (context, child) {
                return MediaQuery(
                    data: MediaQuery.of(context).copyWith(
                      textScaler: TextScaler.linear(1.0),
                    ),
                    child: child!);
              },
              routerConfig: routes,
            );
          },
        ),
      ),
    );
  }
}

