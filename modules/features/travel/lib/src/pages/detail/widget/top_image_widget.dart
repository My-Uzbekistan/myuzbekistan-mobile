import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

class TopImageWidget extends HookWidget {
  final List<String> photos;
  final GestureTapCallback? onImageTap;


  const TopImageWidget({super.key, required this.photos ,this.onImageTap});

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
                        return   ExtendedImage.network(
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

                                _ => Assets.pngDefaultContentImage.toSvgImage(),
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
            alignment: Alignment.bottomLeft,
            child: IntrinsicWidth(
              child: IntrinsicHeight(
                child: Container(
                  margin: EdgeInsets.only(bottom: 40,left: 16),
                  padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  constraints: BoxConstraints(minWidth: 35),
                  decoration: BoxDecoration(
                    color: context.appColors.background.elevation1,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Center(
                    child: Text(
                      "${currentPage.value + 1}/${photos.length}",
                      style: CustomTypography.labelSm,
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
