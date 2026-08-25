import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class ProductCardImage extends StatelessWidget {
  final String imageUrl;

  const ProductCardImage({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return ExtendedImage.network(
      imageUrl,
      key: ValueKey(imageUrl),
      fit: BoxFit.cover,
      width: double.infinity,
      height: double.infinity,
      cache: true,
      cacheMaxAge: const Duration(days: 2),
      loadStateChanged: (state) {
        switch (state.extendedImageLoadState) {
          case LoadState.completed:
            return AnimatedOpacity(
              opacity: 1,
              duration: const Duration(milliseconds: 200),
              child: state.completedWidget,
            );
          default:
            return Assets.png.defaultContentImage.image(fit: BoxFit.cover);
        }
      },
    );
  }
}
