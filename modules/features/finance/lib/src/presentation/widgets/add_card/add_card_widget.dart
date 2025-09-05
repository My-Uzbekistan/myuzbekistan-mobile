import 'package:component_res/component_res.dart';
import 'package:finance/src/core/extension.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';

import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class AddCardWidget extends StatelessWidget {
  final GestureTapCallback? onTap;

  const AddCardWidget({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(24),
        child: Container(
          width: double.infinity,
          color: context.appColors.fill.tertiary,
          constraints: BoxConstraints(
            minHeight: 96,
          ),
          child: Center(
            child: Column(
              spacing: 6,
              children: [
                Assets.svgIconPlus.toSvgImage(
                    tintColor: context.appColors.textIconColor.primary),
                Text(context.localization.addCard).labelMd()
              ],
            ),
          ),
        ),
      ),
    );
  }
}