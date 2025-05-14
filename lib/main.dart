import 'package:component_res/component_res.dart';
import 'package:core/core.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:uzbekistan_travel/core/navigation/router.dart';
import 'package:uzbekistan_travel/core/settings_bloc/app_settings_bloc.dart';
import 'package:uzbekistan_travel/presentaion/profile_page/bloc/profile_bloc.dart';
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

// class _BlurHeaderDelegate extends SliverPersistentHeaderDelegate {
//   @override
//   double get minExtent => kToolbarHeight; // AppBar kichik bo‘lgandagi balandlik
//   @override
//   double get maxExtent =>
//       kToolbarHeight; // AppBar doim kichik qolganda blur ishlaydi
//
//   @override
//   Widget build(
//       BuildContext context, double shrinkOffset, bool overlapsContent) {
//     return
//         Container(
//           height:kToolbarHeight,
//           color: Colors.red,
//           // iOS muzdek effekt
//           alignment: Alignment.bottomCenter,
//           child: Row(
//             children: List.generate(
//               4,
//               (index) {
//                 return HomeCategoryItem();
//               },
//             ),
//           ),
//         );
//   }
//
//   @override
//   bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
//     return true;
//   }
// }

// class _BlurHeaderDelegatest extends SliverPersistentHeaderDelegate {
//   final double stheight;
//
//   _BlurHeaderDelegatest(this.stheight);
//
//   @override
//   double get minExtent => stheight; // AppBar kichik bo‘lgandagi balandlik
//   @override
//   double get maxExtent => stheight; // AppBar doim kichik qolganda blur ishlaydi
//
//   @override
//   Widget build(
//       BuildContext context, double shrinkOffset, bool overlapsContent) {
//     return ClipRect(
//         child: BackdropFilter(
//       filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
//       child: Container(
//         height: maxExtent - shrinkOffset + minExtent,
//         color: context.appColors.background.background.withValues(alpha: 0.85),
//         // iOS muzdek effekt
//         alignment: Alignment.bottomCenter,
//       ),
//     ));
//   }
//
//   @override
//   bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
//     return false;
//   }
// }

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This collapsed_container is the root of your application.

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
          BlocProvider(
            create: (context) => getIt<ProfileBloc>()..add(ProfileBlocEvent.initEvent()),
          )
        ],
        child: BlocBuilder<AppSettingsBloc, AppSettingsBlocState>(
          builder: (context, state) {
            return MaterialApp.router(
              debugShowCheckedModeBanner: false,
              title: 'Flutter Demo',
              theme: AppColorTheme.lightTheme,
              darkTheme: AppColorTheme.darkTheme,
              localizationsDelegates: AppLocalizations.localizationsDelegates,
              supportedLocales: AppLocalizations.supportedLocales,
              locale: state.appLocale.locale,
              themeMode: state.mode,
              builder: (context, child) {
                return MediaQuery(
                    data: MediaQuery.of(context)
                        .copyWith(textScaler: TextScaler.linear(1.0),),
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

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          spacing: 16,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                width: 40,
                height: 40,
                color: context.appColors.fill.secondary,
              ),
            ),
            Flexible(
                child: Text(
              "Hell,user",
              style: CustomTypography.H3,
            ))
          ],
        ),
        surfaceTintColor: Colors.transparent,
      ),
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 18, horizontal: 16),
                decoration: BoxDecoration(
                  color: context.appColors.fill.quaternary,
                  borderRadius: BorderRadius.circular(72),
                ),
                child: Row(
                  spacing: 12,
                  children: [
                    Assets.svgPinLocationLine.toSvgImage(
                      width: 20,
                      colorFilter: ColorFilter.mode(
                        context.appColors.textIconColor.primary,
                        BlendMode.srcIn,
                      ),
                    ),
                    Flexible(
                      child: Text(
                        'Uzbekistan',
                        style: CustomTypography.H2,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          // SliverPersistentHeader with blur effect
          SliverPersistentHeader(
            pinned: true,
            delegate: _BlurHeaderDelegate(),
          ),
          //
          // SliverToBoxAdapter(
          //   child: AvatarStack(),
          // ),

          SliverToBoxAdapter(
            child: SearchInputField(),
          ),
          // Another section with scrolling content
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 32),
                  AppBadge(
                    title: "AppBadge",
                  ),
                  MenuItem(
                    title: "Show menu",
                  ),
                  PriceCategory(),
                  PriceCategoryWithContainer(
                    priceCategory: 3,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Stack(
                      children: [
                        Positioned(
                          child: Column(
                            children: [
                              Text(
                                "Trip",
                                style: CustomTypography.bodyMd
                                    .copyWith(color: Colors.white),
                              ),
                              Text(
                                "Charvak reservoir",
                                style: CustomTypography.H1
                                    .copyWith(color: Colors.white),
                              ),
                            ],
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                          ),
                          bottom: 24,
                          left: 16,
                          right: 16,
                        ),
                      ],
                    ),
                  ),
                  // HomeListCell(title: "Recommended places"),
                  // HomeListCell(title: "Recommended restaurants"),
                  // HomeListCell(title: "Hotels"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _BlurHeaderDelegate extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: context.appColors.background.background,
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: List.generate(
          4,
          (index) {
            return HomeCategoryItem(
              title: "",
            );
          },
        ),
      ),
    );
  }

  @override
  double get maxExtent => 100; // Same as SliverAppBar height

  @override
  double get minExtent => 100;

  @override
  FloatingHeaderSnapConfiguration? get snapConfiguration => null;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      true;
}
