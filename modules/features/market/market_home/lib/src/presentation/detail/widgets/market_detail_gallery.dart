import 'dart:math' as math;
import 'dart:ui';

import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

class MarketDetailGallery extends HookWidget {
  const MarketDetailGallery({super.key, required this.photos});

  final List<String> photos;

  @override
  Widget build(BuildContext context) {
    final pageController = usePageController();
    final currentPage = useState(0);

    void showNextPhoto() {
      if (photos.length < 2) return;
      pageController.animateToPage(
        (currentPage.value + 1) % photos.length,
        duration: const Duration(milliseconds: 280),
        curve: Curves.easeOutCubic,
      );
    }

    return Stack(
      fit: StackFit.expand,
      children: [
        if (photos.isEmpty)
          Assets.png.defaultContentImage.image(fit: BoxFit.cover)
        else
          PageView.builder(
            controller: pageController,
            itemCount: photos.length,
            physics: const ClampingScrollPhysics(),
            onPageChanged: (index) => currentPage.value = index,
            itemBuilder: (context, index) => AppNetworkImage(
              photos[index],
              fit: BoxFit.cover,
              loadingWidget: Shimmer.fromDefault(
                child: const ShimmerDefaultContainer(
                  height: double.maxFinite,
                  width: double.maxFinite,
                  radius: 0,
                ),
              ),
              placeholder: Assets.png.defaultContentImage.image(
                fit: BoxFit.cover,
              ),
            ),
          ),
        Align(
          alignment: Alignment.bottomCenter,
          child: IgnorePointer(
            child: Container(
              height: 84,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    context.appColors.static.black.withValues(alpha: 0),
                    context.appColors.static.black.withValues(alpha: 0.5),
                  ],
                ),
              ),
            ),
          ),
        ),
        if (photos.length > 1)
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 28),
              child: _photoCounter(
                context,
                current: currentPage.value + 1,
                onTap: showNextPhoto,
              ),
            ),
          ),
      ],
    );
  }

  Widget _photoCounter(
    BuildContext context, {
    required int current,
    required VoidCallback onTap,
  }) {
    final white = context.appColors.static.white;

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
          child: Container(
            padding: const EdgeInsets.fromLTRB(12, 6, 8, 6),
            decoration: BoxDecoration(
              color: context.appColors.static.black.withValues(alpha: 0.55),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              spacing: 6,
              children: [
                Text("$current").labelSm(color: white),
                Container(
                  width: 1,
                  height: 8,
                  color: white.withValues(alpha: 0.4),
                ),
                Text("${photos.length}").labelSm(color: white),
                Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.rotationY(math.pi),
                  child: SizedBox.square(
                    dimension: 16,
                    child: Assets.svg.icBackChevron.path.toSvgImage(
                      fit: BoxFit.contain,
                      tintColor: white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
