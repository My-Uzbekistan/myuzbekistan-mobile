import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class AppBadge extends StatelessWidget {
  final String title;
  final String? iconUrl;

  const AppBadge({super.key, required this.title, this.iconUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(minHeight: 32),
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: context.appColors.fill.quaternary),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        spacing: 6,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (iconUrl != null)
            CachedNetworkImage(
              imageUrl: iconUrl ?? "",
              height: 20,
              width: 20,
              color: context.appColors.textIconColor.primary,
              colorBlendMode: BlendMode.srcIn,
              errorWidget: (context, s, ob) {
                return SizedBox();
              },
            ),
          Flexible(
            child: Text(
              title,
              style: CustomTypography.bodyMd,
            ),
          )
        ],
      ),
    );
  }
}
