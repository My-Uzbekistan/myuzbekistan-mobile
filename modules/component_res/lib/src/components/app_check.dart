import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class AppCheck extends StatelessWidget {
  final bool isChecked;

  const AppCheck({super.key, required this.isChecked});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 24,
      height: 24,
      child: Center(
        child: Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
              color: isChecked
                  ? context.appColors.brand
                  : context.appColors.fill.tertiary,
              shape: BoxShape.circle),
          alignment: Alignment.center,
          child: isChecked
              ? Assets.svgIconCheck.toSvgImage(
                  fit: BoxFit.contain,
                  colorFilter: ColorFilter.mode(
                      context.appColors.static.white, BlendMode.srcIn))
              : SizedBox(),
        ),
      ),
    );
  }
}
