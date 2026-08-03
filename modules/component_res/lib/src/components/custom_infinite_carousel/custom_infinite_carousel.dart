import 'dart:async';

import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class CustomInfiniteCarousel extends StatefulWidget {
  final List<String> imageUrls;
  final double height;
  final Duration autoScrollDuration;
  final ValueChanged<int>? onItemTap;

  const CustomInfiniteCarousel({
    super.key,
    required this.imageUrls,
    this.height = 100.0,
    this.autoScrollDuration = const Duration(seconds: 3),
    this.onItemTap,
  });

  @override
  State<CustomInfiniteCarousel> createState() => _CustomInfiniteCarouselState();
}

class _CustomInfiniteCarouselState extends State<CustomInfiniteCarousel> {
  late final PageController _pageController;
  Timer? _timer;

  // Xotiraga ta'sir qilmaydigan virtual indeks markazi
  static const int _initialPage = 1000;

  @override
  void initState() {
    super.initState();

    // Boshlang'ich sahifani 0-rasmga moslab olamiz
    final startPage = widget.imageUrls.isNotEmpty
        ? _initialPage - (_initialPage % widget.imageUrls.length)
        : 0;

    _pageController = PageController(
      initialPage: startPage,
      viewportFraction: 0.86, // Chetdagi kartalar ko'rinib turishi uchun
    );

    _startAutoScroll();
  }

  void _startAutoScroll() {
    if (widget.imageUrls.length <= 1) return;

    _timer?.cancel();
    _timer = Timer.periodic(widget.autoScrollDuration, (_) {
      if (_pageController.hasClients) {
        _pageController.nextPage(
          duration: const Duration(milliseconds: 700),
          curve: Curves.easeInOutCubic, // Silliq va chiroyli o'tish
        );
      }
    });
  }

  void _stopAutoScroll() {
    _timer?.cancel();
  }

  @override
  void dispose() {
    _stopAutoScroll();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.imageUrls.isEmpty) return const SizedBox.shrink();

    return SizedBox(
      height: widget.height,
      child: Listener(
        onPointerDown: (_) => _stopAutoScroll(),
        onPointerUp: (_) => _startAutoScroll(),
        child: PageView.builder(
          controller: _pageController,
          itemBuilder: (context, index) {
            final realIndex = index % widget.imageUrls.length;
            final imageUrl = widget.imageUrls[realIndex];
            return GestureDetector(
              onTap: () => widget.onItemTap?.call(realIndex),
              child: Container(
                margin: const EdgeInsets.only(left: 8.0),
                decoration: BoxDecoration(
                  border: BoxBorder.all(width: 2,color: context.appColors.background.elevation1),
                  borderRadius: BorderRadius.circular(24.0),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(24.0),
                  child: _ImagePage(url: imageUrl),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class _ImagePage extends StatefulWidget {
  final String url;

  const _ImagePage({super.key, required this.url});

  @override
  State<_ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<_ImagePage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context); // MUHIM!

    return ExtendedImage.network(
      widget.url,
      key: ValueKey(widget.url),
      fit: BoxFit.cover,
      cache: true,
      cacheMaxAge: Duration(days: 2),
      loadStateChanged: (ExtendedImageState state) {
        switch (state.extendedImageLoadState) {
          case LoadState.completed:
            return AnimatedOpacity(
              opacity: 1.0,
              duration: Duration(milliseconds: 300),
              curve: Curves.easeInToLinear,
              child: state.completedWidget,
            );
          default:
            return Assets.png.defaultContentImage.path.toImage(fit: BoxFit.cover);
        }
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}