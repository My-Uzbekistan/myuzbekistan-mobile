import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:uzbekistan_travel/presentaion/detail/widget/items_title.dart';

class WorkTimeWidget extends StatelessWidget {
  final String? title;
  final String? workingHours;

  const WorkTimeWidget({super.key, this.title, this.workingHours});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      ItemsTitle(title: title ?? ""),
      Row(
        spacing: 4,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            child:
            Assets.svgIconTime.toSvgImage(colorFilter: ColorFilter.mode(context.appColors.textIconColor.primary, BlendMode.srcIn),height: 16,width: 16,fit: BoxFit.contain),
          ),
          Flexible(
              child: Text(
            workingHours ?? "",
            style: CustomTypography.bodyLg,
          ))
        ],
      )
    ]);
  }
}
