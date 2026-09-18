import 'package:flutter/material.dart';

import 'card_image_selector_item.dart';

class CardImageSelector extends StatelessWidget {
  final List<String> images;
  final String? selectedImage;
  final ValueChanged<String> onSelected;

  const CardImageSelector({
    super.key,
    required this.images,
    required this.onSelected,
    this.selectedImage,
  });

  @override
  Widget build(BuildContext context) {
    if (images.isEmpty) return const SizedBox.shrink();

    return SizedBox(
      height: 56,
      child: LayoutBuilder(
        builder:
            (context, constraints) => SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minWidth: constraints.maxWidth - 32,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:
                      images
                          .map(
                            (image) => CardImageSelectorItem(
                              imageUrl: image,
                              isSelected: image == selectedImage,
                              onTap: () => onSelected(image),
                            ),
                          )
                          .toList(),
                ),
              ),
            ),
      ),
    );
  }
}
