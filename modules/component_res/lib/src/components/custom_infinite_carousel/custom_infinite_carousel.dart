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
                  child: AppNetworkImage(
                    imageUrl,
                    fit: BoxFit.cover,
                    cacheMaxAge: Duration(days: 2),
                    placeholder: Assets.png.defaultContentImage.path.toImage(
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
