import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

extension WidgetsSh on Widget {
  Widget shadow(BuildContext context,
      {Color? backgroundColor,
      BorderRadius? borderRadius,
      bool hideShadow = false}) {
    return RepaintBoundary(
      child: Container(
        clipBehavior: Clip.none,
        decoration: BoxDecoration(
          color: backgroundColor??context.appColors.background.elevation1,
          shape: BoxShape.rectangle,
          borderRadius: borderRadius ?? BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
                color: Color(0xff001024).withValues(alpha: 0.1),
                blurRadius: 34,
                offset: Offset(0, 6),
                blurStyle: BlurStyle.normal)
          ],
        ),
        child: this,
      ),
    );
  }
}
