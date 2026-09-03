import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class GiftBoxImage extends StatelessWidget {
  const GiftBoxImage({
    super.key,
    required this.size,
    this.radius = 0,
    this.zoom = 1,
  });

  final double size;
  final double radius;
  final double zoom;

  @override
  Widget build(BuildContext context) {
    final image = Assets.png.giftBoxGreen.image(
      width: size * zoom,
      height: size * zoom,
    );
    if (zoom == 1 && radius == 0) return image;
    return SizedBox(
      width: size,
      height: size,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(radius),
        child: OverflowBox(
          maxWidth: size * zoom,
          maxHeight: size * zoom,
          child: image,
        ),
      ),
    );
  }
}

const double kGiftBoxCropZoom = 1.3226;
