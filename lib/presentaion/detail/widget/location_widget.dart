import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:uzbekistan_travel/presentaion/detail/widget/items_title.dart';

class LocationWidget extends StatelessWidget {
  final String title;
  final List<double>? coordinates;
  final String? address;

  const LocationWidget(
      {super.key, required this.title, this.coordinates, this.address});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      ItemsTitle(title: title),
      Container(
        height: 136,
        alignment: Alignment.topCenter,
        child: SizedBox(
          height: 120,
          child: Assets.pngMap.toImage(),
        ),
      ),
      if (address != null)
        Padding(
          padding: EdgeInsets.only(bottom: 16),
          child: Row(
            spacing: 12,
            children: [
              Assets.svgPinLocationLine.toSvgImage(
                  colorFilter: ColorFilter.mode(
                      context.appColors.textIconColor.primary,
                      BlendMode.srcIn)),
              Flexible(
                child: Text(
                  address!,
                  style: CustomTypography.bodyLg,
                ),
              ),
            ],
          ),
        )
    ]);
  }
}
