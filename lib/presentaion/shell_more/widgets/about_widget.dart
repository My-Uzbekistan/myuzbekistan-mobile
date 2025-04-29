import 'package:component_res/component_res.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:uzbekistan_travel/core/extensions/context_extension.dart';

class AboutWidget extends HookWidget {
  AboutWidget({super.key,required this.avatars});

  final List<MoreItem> avatars ;
  @override
  Widget build(BuildContext context) {
    final currentIndex = useState(0);
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: context.appColors.background.elevation1Alt),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        spacing: 12,
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Padding(
              padding: EdgeInsets.all(16).copyWith(bottom: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 2,
                children: [
                  Text(
                    context.localizations!.about,
                    style: CustomTypography.bodySm.copyWith(
                        color: context.appColors.textIconColor.secondary),
                  ),
                  Text(
                    context.localizations!.uzbekistan,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTypography.H3,
                  )
                ],
              ),
            ),
          ),
          _PagerItem(
            items: avatars.map((e) => e.photo ?? "").toList(),
            onPageChange: (index) {
              currentIndex.value = index;
            },
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24).copyWith(bottom: 24),
            child: Column(
              spacing: 2,
              children: [
                Text(avatars[currentIndex.value].description ?? "",
                    style: CustomTypography.labelSm.copyWith(
                        color: context.appColors.textIconColor.secondary)),
                Text(
                  avatars[currentIndex.value].title ?? "",
                  style: CustomTypography.bodyMd,
                ),
              ],
            ),
          )
        ],
      ),
    );
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
  final CarouselSliderController? carouselController;
  final List<String> items;
  final ValueChanged<int>? onPageChange;

  const _PagerItem(
      {super.key,
      this.carouselController,
      this.items = const [],
      this.onPageChange});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      double screenWidth = constraints.maxWidth;
      double viewportFraction = screenWidth > 800
          ? 0.3 // Katta ekran: 3 ta element ko'rinadi
          : screenWidth > 400
              ? 0.5 // O'rta ekran: 2 ta element ko'rinadi
              : 0.8; // Kichik ekran: 1 ta element ko'rinadi

      return CarouselSlider.builder(
        itemCount: items.length,
        carouselController: carouselController,
        itemBuilder: (context, index, realIndex) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: CachedNetworkImage(
                  imageUrl: items[index],
                  width: double.maxFinite,

                  fit: BoxFit.fitWidth,
                  errorWidget: (context, o, s) {
                    return Assets.pngDefaultContentImage
                        .toImage(fit: BoxFit.cover);
                  },
                  placeholder: (context, s) {
                    return Assets.pngDefaultContentImage
                        .toImage(fit: BoxFit.cover);
                  },
                ),
              ),
            ),
          );
        },
        options: CarouselOptions(
          autoPlay: false,
          height: 182,
          enlargeStrategy: CenterPageEnlargeStrategy.zoom,
          aspectRatio: 262 / 182,

          enlargeCenterPage: true,
          enableInfiniteScroll: false,
          viewportFraction: viewportFraction,
          onPageChanged: (index, reason) {
            onPageChange?.call(index);
          },
          initialPage: 0,
        ),
      );
      // CarouselSlider(
      //   items: avatars
      //       .map(
      //         (e) => ClipRRect(
      //           borderRadius: BorderRadius.circular(16),
      //           child: CachedNetworkImage(
      //             imageUrl: e,
      //             width: double.maxFinite,
      //             fit: BoxFit.fitWidth,
      //           ),
      //         ),
      //       )
      //       .toList(),
      //   options: CarouselOptions(
      //     autoPlay: false,
      //     height: 182,
      //     aspectRatio: 262 / 182,
      //     enlargeCenterPage: true,
      //     enableInfiniteScroll: false,
      //     viewportFraction: 0.8,
      //     initialPage: 0,
      //   ),
      // );
    });
  }
}
