import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ImagePreviewPage extends HookWidget {
  final List<String> images;

  const ImagePreviewPage({super.key, required this.images});

  @override
  Widget build(BuildContext context) {
    final pageController = usePageController();
    final scrollController = useScrollController();
    final selectedIndex = useState(0);
    useEffect(() {
      void listener() {
        int newIndex = pageController.page?.round() ?? 0;
        if (newIndex != selectedIndex.value) {
          selectedIndex.value = newIndex;
          _scrollToSelected(scrollController, newIndex, context);
        }
      }

      pageController.addListener(listener);
      return () => pageController.removeListener(listener);
    }, [pageController]);

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: pageController,
              itemCount: images.length,
              itemBuilder: (context, index) {
                final element = images[index];
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child:  ExtendedImage.network(element,
                        mode: ExtendedImageMode.gesture, // 👈 Zoom va drag yoqiladi
                        initGestureConfigHandler: (state) => GestureConfig(
                          minScale: 1.0,
                          maxScale: 4.0,
                          animationMinScale: 0.8,
                          animationMaxScale: 4.5,
                          speed: 1.0,
                          inertialSpeed: 100.0,
                          initialScale: 1.0,
                          inPageView: false,
                          initialAlignment: InitialAlignment.center,
                        )
                    ),

                );
              },
            ),
          ),
          SizedBox(
            height: 100,
            child: Center(
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                controller: scrollController,
                physics: ClampingScrollPhysics(),
                itemCount: images.length,
                separatorBuilder: (_, __) => const SizedBox(width: 8),
                itemBuilder: (context, index) {
                  bool isSelected = index == selectedIndex.value;
                  return Align(
                    alignment: Alignment.center,
                    child: GestureDetector(
                      onTap: () {
                        pageController.animateToPage(
                          index,
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      },
                      child: AnimatedContainer(
                        height: 56,
                        width: 56,
                        duration: const Duration(milliseconds: 300),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(11),
                          border:
                              isSelected
                                  ? Border.all(
                                    color: context.appColors.brand,
                                    width: 1,
                                  )
                                  : null,
                        ),
                        child: SizedBox(
                          height: 50,
                          width: 50,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Container(
                              color: context.appColors.fill.tertiary,
                              child: ExtendedImage.network(
                                 images[index],
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _scrollToSelected(
    ScrollController scrollController,
    int index,
    BuildContext context,
  ) {
    double itemWidth = 50 + 8; // Image width + separator
    double targetScroll =
        (index * itemWidth) -
        (MediaQuery.of(context).size.width / 2) +
        (itemWidth / 2);

    scrollController.animateTo(
      targetScroll,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }
}
