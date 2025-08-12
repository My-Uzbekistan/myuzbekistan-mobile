import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class AppCheck extends StatelessWidget {
  final bool isChecked;

  const AppCheck({super.key, required this.isChecked});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      height: 20,
      padding: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
          color: isChecked
              ? context.appColors.brand
              : context.appColors.fill.tertiary,
          shape: BoxShape.circle),
      child: isChecked
          ? Assets.svgIconCheck.toSvgImage(
              fit: BoxFit.fitHeight,
              colorFilter: ColorFilter.mode(
                  context.appColors.static.white, BlendMode.srcIn))
          : SizedBox(),
    );
  }
}
