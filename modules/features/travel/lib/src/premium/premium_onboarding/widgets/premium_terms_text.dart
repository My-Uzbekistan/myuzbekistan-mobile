import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:travel/src/core/extension.dart';

class PremiumTermsText extends StatelessWidget {
  const PremiumTermsText({super.key});

  @override
  Widget build(BuildContext context) {
    final style = CustomTypography.bodyXsm.copyWith(
      color: context.appColors.textIconColor.secondary,
    );

    return Column(
      spacing: 6,
      children: [
        Text(
          context.localization.premiumCancelAnytime,
          style: style,
          textAlign: TextAlign.center,
        ),
        Text(
          context.localization.premiumTerms,
          style: style.copyWith(
            decoration: TextDecoration.underline,
            decorationColor: context.appColors.textIconColor.secondary,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
