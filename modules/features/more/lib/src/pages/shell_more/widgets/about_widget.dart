import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:more/src/core/extension.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart';

class AboutWidget extends HookWidget {
  AboutWidget({super.key, required this.avatars});

  final List<MoreItem> avatars;

  @override
  Widget build(BuildContext context) {
    final currentIndex = useState(0);
    final pageController = usePageController(viewportFraction: 0.9);
    return _PagerItem(
      pageController: pageController,
      items: avatars,
      onPageChange: (index) {
        currentIndex.value = index;
      },
    );
    //   Column(
    //   mainAxisAlignment: MainAxisAlignment.start,
    //   spacing: 12,
    //   children: [
    //     _PagerItem(
    //       pageController: PageController(viewportFraction: 0.8),
    //
    //       items: avatars.map((e) => e.photo ?? "").toList(),
    //       onPageChange: (index) {
    //         currentIndex.value = index;
    //       },
    //     ),
    //   ],
    // );
  }
}

// class CarouselPage extends StatefulWidget {
//   @override
//   _CarouselPageState createState() => _CarouselPageState();
// }
//
// class _CarouselPageState extends State<CarouselPage> {
//   final PageController _pageController = PageController(viewportFraction: 0.8);
//   double _currentPage = 0;
//
//   @override
//   void initState() {
//     super.initState();
//     _pageController.addListener(() {
//       setState(() {
//         _currentPage = _pageController.page!;
//       });
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: Center(
//         child: PageView.builder(
//           controller: _pageController,
//           itemCount: 5,
//           itemBuilder: (context, index) {
//             double scale = 1.0;
//             double difference = (_currentPage - index).abs();
//             if (difference > 0) {
//               scale = 1 - (difference * 0.2); // Yon elementlar kichikroq bo‘ladi
//             }
//
//             return TweenAnimationBuilder(
//               duration: Duration(milliseconds: 100),
//               tween: Tween<double>(begin: scale, end: scale),
//               builder: (context, value, child) {
//                 return Transform.scale(
//                   scale: value,
//                   child: Container(
//                     margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(20),
//                       color: Colors.primaries[index % Colors.primaries.length],
//                     ),
//                     child: Center(
//                       child: Text(
//                         "Page ${index + 1}",
//                         style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
//                       ),
//                     ),
//                   ),
//                 );
//               },
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

class _PagerItem extends StatelessWidget {
  final PageController? pageController;
  final List<MoreItem> items;
  final ValueChanged<int>? onPageChange;

  const _PagerItem({
    super.key,
    this.pageController,
    this.items = const [],
    this.onPageChange,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 311,
      child: PageView.builder(
        controller: pageController,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: GestureDetector(
              onTap: () {
                context.pushNamed(
                  AppNavPath.more.aboutUsInfoPage.name,
                  extra: items[index],
                );
              },
              child: AspectRatio(
                aspectRatio: 1,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: RepaintBoundary(
                          child: ExtendedImage.network(
                            items[index].photo ?? "",
                            cache: true,
                            fit: BoxFit.cover,
                            loadStateChanged: (state) {
                              switch (state.extendedImageLoadState) {
                                case LoadState.completed:
                                  return AnimatedOpacity(
                                    opacity: 1.0,
                                    duration: Duration(milliseconds: 200),
                                    child: state.completedWidget,
                                  );

                                default:
                                  return Assets.pngDefaultContentImage.toImage(
                                    fit: BoxFit.cover,
                                  );
                              }
                            },
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 16,
                        left: 24,
                        right: 16,
                        child: Column(
                          children: [
                            Text(
                              items[index].description ?? "",
                              style: CustomTypography.H3,
                            ).labelMd(color: Colors.white),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
        itemCount: items.length,
      ),
    );

    //   LayoutBuilder(
    //   builder: (context, constraints) {
    //     double screenWidth = constraints.maxWidth;
    //     double viewportFraction =
    //         screenWidth > 800
    //             ? 0.3 // Katta ekran: 3 ta element ko'rinadi
    //             : screenWidth > 400
    //             ? 0.5 // O'rta ekran: 2 ta element ko'rinadi
    //             : 0.8; // Kichik ekran: 1 ta element ko'rinadi
    //
    //     return CarouselSlider.builder(
    //       itemCount: items.length,
    //       carouselController: carouselController,
    //       itemBuilder: (context, index, realIndex) {
    //         return Padding(
    //           padding: EdgeInsets.symmetric(horizontal: 8),
    //           child: Container(
    //             decoration: BoxDecoration(
    //               borderRadius: BorderRadius.circular(16),
    //             ),
    //             child: ClipRRect(
    //               borderRadius: BorderRadius.circular(16),
    //               child: RepaintBoundary(
    //                 child: ExtendedImage.network(
    //                   items[index],
    //                   cache: true,
    //                   fit: BoxFit.fitWidth,
    //                   loadStateChanged: (state) {
    //                     switch (state.extendedImageLoadState) {
    //                       case LoadState.completed:
    //                         return AnimatedOpacity(
    //                           opacity: 1.0,
    //                           duration: Duration(milliseconds: 200),
    //                           child: state.completedWidget,
    //                         );
    //
    //                       default:
    //                         return Assets.pngDefaultContentImage.toImage(
    //                           fit: BoxFit.cover,
    //                         );
    //                     }
    //                   },
    //                 ),
    //               ),
    //             ),
    //           ),
    //         );
    //       },
    //       options: CarouselOptions(
    //         autoPlay: false,
    //         height: 182,
    //         enlargeStrategy: CenterPageEnlargeStrategy.zoom,
    //         aspectRatio: 262 / 182,
    //
    //         enlargeCenterPage: true,
    //         enableInfiniteScroll: false,
    //         viewportFraction: viewportFraction,
    //         onPageChanged: (index, reason) {
    //           onPageChange?.call(index);
    //         },
    //         initialPage: 0,
    //       ),
    //     );
    //   },
    // );
  }
}
