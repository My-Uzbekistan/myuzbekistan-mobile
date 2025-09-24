import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:travel/src/core/extension.dart';

class CatalogItem extends StatelessWidget {
  final CatalogItemModel item;
  final GestureTapCallback? onTap;

  const CatalogItem({super.key, required this.item, this.onTap});

  @override
  Widget build(BuildContext context) {
    final textColor =
        item.status != CatalogStatus.upcoming
            ? Colors.white
            : context.appColors.textIconColor.secondary;
    final bgColor =
        item.status != CatalogStatus.upcoming
            ? item.color
            : context.appColors.fill.quaternary;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 8,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: item.color,
                    ),
                    child: ExtendedImage.network(
                      item.icon,
                      color: Colors.white,
                      colorBlendMode: BlendMode.srcIn,
                      loadStateChanged: (state) {
                        switch (state.extendedImageLoadState) {
                          case LoadState.completed:
                            return null;
                          default:
                            return SizedBox();
                        }
                      },
                    ),
                  ),
                  Flexible(
                    child: Text(
                      item.title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ).labelMd(color: textColor),
                  ),
                ],
              ),
            ),

            if (item.status != CatalogStatus.active)
              Positioned(
                right: 12,
                top: 12,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 1.5, horizontal: 4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(56),
                    color:
                        item.status == CatalogStatus.newService
                            ? Color(0xffFFD7F0)
                            : context.appColors.fill.tertiary,
                  ),
                  child: Text(
                    item.status == CatalogStatus.newService
                        ? context.localization.catalogItemStatusNew
                        : context.localization.catalogItemStatusSoon,
                  ).bodyXXsm(
                    color:
                        item.status == CatalogStatus.newService
                            ? Colors.black
                            : context.appColors.textIconColor.secondary,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
