import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class IconTextCell extends StatelessWidget {
  final String? iconUrl;
  final String title;
  final bool showArrow;
  final GestureTapCallback? onTap;

  const IconTextCell({
    super.key,
    required this.title,
    this.iconUrl,
    this.showArrow = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.translucent,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 12),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          spacing: 12,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (iconUrl != null)
             SizedBox(
               height: 20,
               width: 20,
               child:  Center(
                 child: ExtendedImage.network(
                   iconUrl ?? "",
                   color: context.appColors.textIconColor.primary,
                   colorBlendMode: BlendMode.srcIn,
                   fit: BoxFit.fill,

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
            Expanded(
              child: Text(
                title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ).bodyLg(),
            ),
            if (showArrow)
              Assets.svgIconArrowRight.toSvgImage(
                fit: BoxFit.fill,
                tintColor: context.appColors.textIconColor.secondary,
              ),
          ],
        ),
      ),
    );
  }
}
