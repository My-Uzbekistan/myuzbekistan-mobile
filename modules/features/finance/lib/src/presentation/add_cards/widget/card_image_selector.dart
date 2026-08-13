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

  static const _horizontalPadding = 16.0;

  @override
  Widget build(BuildContext context) {
    if (images.isEmpty) return const SizedBox.shrink();

    return SizedBox(
      height: CardImageSelectorItem.size,
      child: LayoutBuilder(
        builder:
            (context, constraints) => SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(
                horizontal: _horizontalPadding,
              ),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minWidth: constraints.maxWidth - _horizontalPadding * 2,
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
