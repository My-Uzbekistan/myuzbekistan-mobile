import 'package:component_res/component_res.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:uzbekistan_travel/core/navigation/router.dart';

import 'di/injection.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  if (!kReleaseMode) {
    debugPrint("RUNNING APP");
  }

  configureInjection();
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
  // This widget is the root of your application.

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
    debugPrint("BUILD FUNCTION IS WORKING");
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppColorTheme.lightTheme,
      darkTheme: AppColorTheme.darkTheme,
      builder: (context, child) {
        return MediaQuery(
            data: MediaQuery.of(context)
                .copyWith(textScaler: TextScaler.linear(1.0)),
            child: child!);
      },
      routerConfig: routes,
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
              "Hello, user",
              style: CustomTypography.H3,
            ))
          ],
        ),
        surfaceTintColor: Colors.transparent,
      ),
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          // SliverAppBar with flexible space
          // SliverAppBar(
          //   pinned: true,
          //   elevation: 0,
          //   floating: false,
          //   surfaceTintColor: Colors.transparent,
          //   title: Text('SliverAppBar'),
          //  // Adjusted height for smooth transition
          // ),

          // Padding and Container for the first section

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

          SliverToBoxAdapter(
            child: AvatarStack(),
          ),

          SliverToBoxAdapter(
            child: SearchInputField(),
          ),
          // Another section with scrolling content
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 32),
                  AppBadge(),
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

class AvatarStack extends StatelessWidget {
  final List<String> avatars = [
    "https://i.pravatar.cc/100?img=1",
    "https://i.pravatar.cc/100?img=2",
    "https://i.pravatar.cc/100?img=3",
    "https://i.pravatar.cc/100?img=4",
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150, // Stack kengligi
      height: 60, // Stack balandligi
      child: Stack(
        children: List.generate(avatars.length, (index) {
          int reversedIndex =
              avatars.length - index - 1; // Elementlarni teskari joylashtirish
          return Positioned(
            left: reversedIndex * 30.0, // Har bir keyingi avatar orqaga ketadi
            child: CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(avatars[reversedIndex]),
            ),
          );
        }),
      ),
    );
  }
}
