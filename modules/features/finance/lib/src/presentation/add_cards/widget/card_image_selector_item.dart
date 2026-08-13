import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CardImageSelectorItem extends StatelessWidget {
  final String imageUrl;
  final bool isSelected;
  final VoidCallback onTap;

  const CardImageSelectorItem({
    super.key,
    required this.imageUrl,
    required this.isSelected,
    required this.onTap,
  });

  static const size = 56.0;
  static const _imageSize = 40.0;
  static const _selectionSize = 52.0;
  static const _selectionWidth = 4.0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        HapticFeedback.selectionClick();
        onTap();
      },
      child: SizedBox(
        width: size,
        height: size,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: _imageSize,
              height: _imageSize,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: context.appColors.fill.quaternary,
              ),
              clipBehavior: Clip.antiAlias,
              child: ExtendedImage.network(
                imageUrl,
                cache: true,
                cacheMaxAge: const Duration(days: 10),
                fit: BoxFit.cover,
                loadStateChanged: (state) {
                  switch (state.extendedImageLoadState) {
                    case LoadState.completed:
                      return AnimatedOpacity(
                        opacity: 1.0,
                        duration: const Duration(milliseconds: 300),
                        child: state.completedWidget,
                      );
                    default:
                      return const SizedBox();
                  }
                },
              ),
            ),
            if (isSelected)
              Container(
                width: _selectionSize,
                height: _selectionSize,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: context.appColors.brand,
                    width: _selectionWidth,
                    strokeAlign: BorderSide.strokeAlignInside,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
