import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  final Color? iconBgColor;
  final String title;
  final String? imageUrl;
  final   VoidCallback? onTap;

  const MenuItem(
      {super.key, required this.title, this.imageUrl, this.iconBgColor,this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
      child: Ink(
          height: 112,
          width: 112,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: context.appColors.background.elevation1Alt),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Ink(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: iconBgColor ?? context.appColors.brand),
              child: SizedBox(
                  height: 24,
                  child: CachedNetworkImage(imageUrl: imageUrl ?? "",
                    errorWidget: (context, url, error) =>
                        Assets.svgIconMenu.toSvgImage(),
                  )

                // (svgAssets??Assets.svgIconMenu)
                //     .toSvgImage(height: 24, width: 24, fit: BoxFit.none),
              ),),
              Expanded(
                  child: SizedBox(
                    height: 4,
                  )),
              Text(
                title,
                style: CustomTypography.labelSm.copyWith(
                    color: context.appColors.textIconColor.primary),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              )
              ],
            ),
          )),
    );
  }
}
