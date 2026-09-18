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

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        HapticFeedback.selectionClick();
        onTap();
      },
      child: SizedBox(
        width: 56,
        height: 56,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: context.appColors.fill.quaternary,
              ),
              clipBehavior: Clip.antiAlias,
              child: AppNetworkImage(
                imageUrl,
                cacheMaxAge: const Duration(days: 10),
                fit: BoxFit.cover,
              ),
            ),
            if (isSelected)
              Container(
                width: 52,
                height: 52,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: context.appColors.brand,
                    width: 4,
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
