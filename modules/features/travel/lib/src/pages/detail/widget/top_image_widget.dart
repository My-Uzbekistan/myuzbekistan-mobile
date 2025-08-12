import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

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
          child:
              photos.isEmpty
                  ? Assets.pngDefaultContentImage.toImage(fit: BoxFit.cover)
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
                            switch (state.extendedImageLoadState) {
                              case LoadState.completed:
                                return AnimatedOpacity(
                                  opacity: 1.0,
                                  duration: Duration(milliseconds: 300),
                                  child: state.completedWidget,
                                );
                              case LoadState.loading:
                                Shimmer.fromDefault(
                                  child: ShimmerDefaultContainer(
                                    height: double.maxFinite,
                                    width: double.maxFinite,
                                  ),
                                );

                              default:
                                return Assets.pngDefaultContentImage
                                    .toSvgImage();
                            }
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
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 6, horizontal: 10),
                constraints: BoxConstraints(minWidth: 46),
                decoration: BoxDecoration(
                  color: Colors.black.withValues(alpha: 0.64),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Text(
                  "${currentPage.value + 1}/${photos.length}",
                  style: CustomTypography.labelSm.copyWith(color: Colors.white),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
