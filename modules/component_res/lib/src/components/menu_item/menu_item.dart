import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  final Color? iconBgColor;
  final String title;
  final String? svgAssets;

  const MenuItem({super.key,required this.title, this.svgAssets,this.iconBgColor,});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      borderRadius: BorderRadius.circular(20),
      child: Ink(
          height: 100,
          width: 100,
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
                  child: (svgAssets??Assets.svgIconMenu)
                      .toSvgImage(height: 24, width: 24, fit: BoxFit.none),
                ),
                Expanded(
                    child: SizedBox(
                  height: 4,
                )),
                Text(
                  title,
                  style: CustomTypography.labelSm.copyWith(color: context.appColors.textIconColor.primary),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                )
              ],
            ),
          )),
    );
  }
}
