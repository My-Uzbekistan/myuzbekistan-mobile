import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class BasketItemImage extends StatelessWidget {
  const BasketItemImage({super.key, required this.photo});

  final String photo;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.31),
        border: Border.all(
          color: context.appColors.static.white.withValues(alpha: 0.12),
          width: 0.51,
        ),
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          if (photo.isEmpty)
            Assets.png.defaultContentImage.image(fit: BoxFit.cover)
          else
            ProductCardImage(imageUrl: photo),
          ColoredBox(
            color: context.appColors.static.black.withValues(
              alpha: 0.16,
            ),
          ),
        ],
      ),
    );
  }
}
