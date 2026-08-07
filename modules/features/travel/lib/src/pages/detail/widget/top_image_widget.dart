import 'dart:math' as math;
import 'dart:ui';

import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

class TopImageWidget extends HookWidget {
  final List<String> photos;
  final GestureTapCallback? onImageTap;

  const TopImageWidget({super.key, required this.photos, this.onImageTap});

  @override
  Widget build(BuildContext context) {
    final pageController = usePageController();
    final currentPage = useState<int>(0);

    return Stack(
      children: [
        Positioned.fill(
          child: photos.isEmpty
              ? Assets.png.defaultContentImage.image(fit: BoxFit.cover)
              : GestureDetector(
                  onTap: onImageTap,
                  child: PageView.builder(
                    controller: pageController,
                    onPageChanged: (int index) {
                      currentPage.value = index;
                    },
                    itemCount: photos.length,
                    physics: ClampingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return ExtendedImage.network(
                        photos[index],
                        cache: true,
                        fit: BoxFit.cover,
                        loadStateChanged: (state) {
                          return switch (state.extendedImageLoadState) {
                            LoadState.completed => AnimatedOpacity(
                              opacity: 1.0,
                              duration: Duration(milliseconds: 300),
                              child: state.completedWidget,
                            ),
                            LoadState.loading => Shimmer.fromDefault(
                              child: ShimmerDefaultContainer(
                                height: double.maxFinite,
                                width: double.maxFinite,
                              ),
                            ),
                            _ => Assets.png.defaultContentImage.image(),
                          };
                        },
                      );
                    },
                  ),
                ),
        ),
        Positioned.fill(
          child: IgnorePointer(
            child: Container(color: Colors.black.withValues(alpha: 0.16)),
          ),
        ),
        if (photos.length > 1)
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 40),
              child: GestureDetector(
                onTap: onImageTap,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                    child: Container(
                      padding: const EdgeInsets.only(
                        left: 12,
                        right: 8,
                        top: 6,
                        bottom: 6,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.black.withValues(alpha: 0.55),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "${currentPage.value + 1}",
                            style: CustomTypography.labelSm.copyWith(
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(width: 6),
                          Container(
                            width: 1,
                            height: 8,
                            color: Colors.white.withValues(alpha: 0.4),
                          ),
                          const SizedBox(width: 6),
                          Text(
                            "${photos.length}",
                            style: CustomTypography.labelSm.copyWith(
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(width: 4),
                          Transform(
                            alignment: Alignment.center,
                            transform: Matrix4.rotationY(math.pi),
                            child: SizedBox(
                              height: 16,
                              width: 16,
                              child: Assets.svg.icBackChevron.path.toSvgImage(
                                fit: BoxFit.contain,
                                tintColor: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
