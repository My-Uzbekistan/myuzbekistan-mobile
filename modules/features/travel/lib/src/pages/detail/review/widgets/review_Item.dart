import 'dart:ffi';

import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';
import 'package:travel/src/core/extension.dart';

class ReviewItem extends StatelessWidget {
  final ReviewModel item;
  final bool isShort;
  final GestureTapCallback? onTap;

  const ReviewItem({
    super.key,
    required this.item,
    this.isShort = true,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: context.appColors.stroke.nonOpaque,
            width: 1,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 16,
          children: [
            Row(
              spacing: 12,
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: context.appColors.textIconColor.primary,
                  child: Text(
                    (item.userName.isNotEmpty
                        ? item.userName.characters.first.toUpperCase()
                        : "?"),
                  ).labelMd(color: context.appColors.textIconColor.oposite),
                ),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 4,
                    children: [
                      Text(
                        item.userName.split("@").first,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ).labelMd(),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        spacing: 4,
                        children: [
                          ReviewStars(stars: item.rating),
                          Flexible(
                            child: Text(
                              item.createdAt?.toFormatMMMY() ?? "".orEmpty(),
                              maxLines: 1,
                            ).bodyXsm(
                              color: context.appColors.textIconColor.secondary,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            LayoutBuilder(
              builder: (context, constraints) {
                final text = item.comment;

                final maxWidth = constraints.maxWidth; // shu joyda aniqlaymiz
                bool moreThan3 = TextLineChecker.isMoreThan3Lines(
                  text,
                  maxWidth,
                  TextStyle(fontSize: 16),
                );
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 4,
                  children: [
                    Text(
                      text,
                      maxLines: isShort ? 3 : null,
                      overflow:
                          isShort
                              ? TextOverflow.ellipsis
                              : TextOverflow.visible,
                    ).bodyMd(),
                    if (moreThan3 && isShort)
                      Text(
                        context.localization.readMore,
                        style: CustomTypography.bodyMd.copyWith(
                          color: context.appColors.brand,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ReviewStars extends StatelessWidget {
  final int stars;
  final bool filled;
  final Color? selectedColor;
  final Color? unselectedColor;
  final double size;
  final double spacing;
  final ValueChanged<int>? onItemTab;

  const ReviewStars({
    super.key,
    required this.stars,
    this.filled = false,
    this.size = 12,
    this.spacing = 2,
    this.selectedColor,
    this.unselectedColor,
    this.onItemTab,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: spacing,
      mainAxisAlignment: MainAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      children: List.generate(
        5,
        (e) => GestureDetector(
          onTap:
              onItemTab != null
                  ? () {
                    onItemTab!(e + 1);
                  }
                  : null,
          behavior: HitTestBehavior.translucent,
          child: SizedBox(
            height: size,
            width: size,
            child: star(context, e + 1),
          ),
        ),
      ),
    );
  }

  Widget star(BuildContext context, int e) {
    if (filled) {
      return Assets.svgStarFill.toSvgImage(
        fit: BoxFit.fill,
        tintColor:
            e <= stars
                ? selectedColor ?? context.appColors.textIconColor.primary
                : unselectedColor ?? context.appColors.textIconColor.disable,
      );
    }
    return e <= stars
        ? Assets.svgStarFill.toSvgImage(
          fit: BoxFit.fill,
          tintColor: context.appColors.textIconColor.primary,
        )
        : Assets.svgStarOutline.toSvgImage(
          fit: BoxFit.fill,
          tintColor: context.appColors.textIconColor.primary,
        );
  }
}
