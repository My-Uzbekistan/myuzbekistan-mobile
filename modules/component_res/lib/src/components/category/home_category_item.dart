import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class CategoryItem {
  final String name;
  final String? icon;

  CategoryItem({required this.name, this.icon});
}

class HomeCategoryItem extends StatelessWidget {
  final CategoryItem categoryItem;
  final VoidCallback? onTap;
  final double shrinkFactor;

  const HomeCategoryItem(
      {super.key,
      required this.categoryItem,
      this.onTap,
      this.shrinkFactor = 1.0});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      splashColor: Colors.grey.withValues(alpha: 0.05),
      borderRadius: BorderRadius.circular(10),
      child: Container(
        width: 90,
        height: double.maxFinite,
        alignment: Alignment.bottomCenter,
        child:Column(
            spacing: 8,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: shrinkFactor != 1.0
                    ? Colors.transparent
                    : context.appColors.brand,
                radius: 24 * shrinkFactor,
                child: SizedBox(
                    height: 24,
                    width: 24,
                    child:  ExtendedImage.network(categoryItem.icon??"",
                      height: 24,
                      width: 24,
                      color: shrinkFactor != 1.0
                          ? context.appColors.textIconColor.primary
                          : Colors.white,
                      fit: BoxFit.contain,
                      filterQuality: FilterQuality.none,


                    )



        ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 4),
                child: Text(
                  categoryItem.name,
                  maxLines: 1,
                  textAlign: TextAlign.center,
                  style: CustomTypography.bodySm,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),

      ),
    );
  }

  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
