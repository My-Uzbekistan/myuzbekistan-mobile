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
    return GestureDetector(
      onTap: onTap,
      child:
      Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 8,

        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 64,
                  width: 64,
                  color: Color(0xff28bf5a),
                  child: ExtendedImage.network(
                    item.icon,
                    fit: BoxFit.cover,
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
              ),
              if (item.status != CatalogStatus.active)
                Positioned(
                  right: -10,
                  top: -4,
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 1.5, horizontal: 4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(56),
                      color:
                      item.status == CatalogStatus.newService
                          ? context.appColors.colors.red
                          : context.appColors.textIconColor.primary,
                    ),
                    child: Text(
                      item.status == CatalogStatus.newService
                          ? context.localization.catalogItemStatusNew
                          : context.localization.catalogItemStatusSoon,
                    ).bodyXXsm(
                      color: item.status == CatalogStatus.newService ?Colors.white:context.appColors.textIconColor.oposite,
                    ),
                  ),
                ),

            ]
          ),
          Flexible(
            child:
                Text(
                  item.title,
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                ).bodyXXsm(

                ),
          ),
        ],
      ),
    );
  }
}
