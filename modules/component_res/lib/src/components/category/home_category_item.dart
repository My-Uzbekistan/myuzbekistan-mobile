import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class HomeCategoryItem extends StatelessWidget {
  final String title;
  final String? imageUrl;
  final VoidCallback? onTap;

  const HomeCategoryItem(
      {super.key, required this.title, this.imageUrl, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 100,
        alignment: Alignment.center,
        child: ConstrainedBox(
          constraints: BoxConstraints(minWidth: 72, maxWidth: 100),
          child: Column(
            children: [
              Padding(
                key: ObjectKey("AvatarContainer"),
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Container(
                  height: 56,
                  width: 56,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: context.appColors.fill.quaternary),
                  child: SizedBox(
                    height: 24,
                      width: 24,
                      child: CachedNetworkImage(
                    height: 24,
                    width: 24,
                    color: context.appColors.brand,
                    imageUrl: imageUrl ?? "",
                    fit: BoxFit.contain,
                    errorListener: (ob){},
                    errorWidget: (c, w, o) {
                      return SizedBox();
                    },
                  )),
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: 4,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 4),
                child: Text(
                  title,
                  maxLines: 1,
                  style: CustomTypography.bodySm,
                  overflow: TextOverflow.ellipsis,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
