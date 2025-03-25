import 'dart:ui';

import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class PriceCategory extends StatelessWidget {
  final int priceCategory;
  final Color? activeTextColor;
  final Color? inactiveTextColor;
  final TextStyle? textstyle;

  const PriceCategory(
      {super.key,
      this.priceCategory = 2,
      this.activeTextColor,
      this.inactiveTextColor,
      this.textstyle});

  @override
  Widget build(BuildContext context) {
    final List<TextSpan> textSpanList = [];
    for (int i = 0; i < 4; i++) {
      textSpanList.add(TextSpan(
          text: "\$",
          style: (textstyle ?? CustomTypography.labelSm).copyWith(
            color: i < (priceCategory > 4 ? 4 : priceCategory)
                ? activeTextColor ?? context.appColors.textIconColor.primary
                : inactiveTextColor ??
                    context.appColors.textIconColor.secondary,
          )));
    }
    return RichText(text: TextSpan(children: textSpanList));
  }
}

class PriceCategoryWithContainer extends StatelessWidget {
  final int priceCategory;

  const PriceCategoryWithContainer({super.key, required this.priceCategory});

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          constraints: BoxConstraints(minHeight: 32, minWidth: 54),
          alignment: Alignment.center,
          child: Center(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 32.0, sigmaY: 32.0), // Blur 32

              child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.black.withValues(alpha: 0.64),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  alignment: Alignment.center,
                  child: PriceCategory(
                    activeTextColor: Colors.white,
                    priceCategory: priceCategory,
                    inactiveTextColor: Colors.white.withValues(alpha: 0.56),
                  )),
            ),
          ),
        ),
      ),
    );
  }
}

class PriceContainer extends StatelessWidget {
  final String priceText;

  const PriceContainer({super.key, required this.priceText});

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          constraints: BoxConstraints(minHeight: 32, minWidth: 54),
          alignment: Alignment.center,
          child: Center(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 32.0, sigmaY: 32.0), // Blur 32

              child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.black.withValues(alpha: 0.64),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    priceText,
                    style:
                        CustomTypography.labelSm.copyWith(color: Colors.white),
                  )),
            ),
          ),
        ),
      ),
    );
  }
}
