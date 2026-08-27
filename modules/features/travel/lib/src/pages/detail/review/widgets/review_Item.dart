import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
                        spacing: 6,
                        children: [
                          ReviewStars(
                            stars: item.rating,
                            filled: true,
                            selectedColor: context.appColors.colors.yellow,
                          ),
                          Container(
                            width: 3,
                            height: 3,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: context.appColors.textIconColor.secondary,
                            ),
                          ),
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
                        context.localization.expand,
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
    final row = Row(
      spacing: spacing,
      mainAxisAlignment: MainAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      children: List.generate(
        5,
        (e) => SizedBox(
          height: size,
          width: size,
          child: AnimatedScale(
            scale: onItemTab != null && e + 1 == stars ? 1.15 : 1,
            duration: const Duration(milliseconds: 180),
            curve: Curves.easeOutBack,
            child: star(context, e + 1),
          ),
        ),
      ),
    );
    if (onItemTab == null) return row;
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTapDown: (details) => _select(details.localPosition.dx),
      onHorizontalDragStart: (details) => _select(details.localPosition.dx),
      onHorizontalDragUpdate: (details) => _select(details.localPosition.dx),
      child: row,
    );
  }

  void _select(double dx) {
    final value = ((dx / (size + spacing)).floor() + 1).clamp(1, 5);
    if (value == stars) return;
    HapticFeedback.selectionClick();
    onItemTab!(value);
  }

  Widget star(BuildContext context, int e) {
    if (filled) {
      return Assets.svg.starFill.path.toSvgImage(
        fit: BoxFit.fill,
        tintColor:
            e <= stars
                ? selectedColor ?? context.appColors.textIconColor.primary
                : unselectedColor ?? context.appColors.textIconColor.disable,
      );
    }
    return e <= stars
        ? Assets.svg.starFill.path.toSvgImage(
          fit: BoxFit.fill,
          tintColor: context.appColors.textIconColor.primary,
        )
        : Assets.svg.starOutline.path.toSvgImage(
          fit: BoxFit.fill,
          tintColor: context.appColors.textIconColor.primary,
        );
  }
}
