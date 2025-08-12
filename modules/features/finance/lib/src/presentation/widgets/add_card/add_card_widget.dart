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
      child: Container(
        color: Colors.transparent,

        padding: EdgeInsets.symmetric(vertical: 8),
        constraints: BoxConstraints(minHeight: 56),
        child: Row(
          spacing: 16,

          children: [
            Container(
              height: 24,
              width: 36,
              decoration: BoxDecoration(
                color: context.appColors.fill.tertiary,
                borderRadius: BorderRadius.circular(3),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(3),
                child: Assets.svgIconPlus.toSvgImage(),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 2,
                children: [Text(context.localization.addCard).bodyLg()],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
