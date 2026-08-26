import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class ProductCardImage extends StatelessWidget {
  final String imageUrl;

  const ProductCardImage({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return AppNetworkImage(
      imageUrl,
      fit: BoxFit.cover,
      width: double.infinity,
      height: double.infinity,
      cacheMaxAge: const Duration(days: 2),
      placeholder: Assets.png.defaultContentImage.image(fit: BoxFit.cover),
    );
  }
}
