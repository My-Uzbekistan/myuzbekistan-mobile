import 'dart:math';
import 'dart:ui';

import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class AccountWidget extends StatelessWidget {
  const AccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(100),
      child: Container(
        padding: EdgeInsets.all(6).copyWith(right: 10),
        decoration: BoxDecoration(color: Colors.white),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 16, sigmaY: 16),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            spacing: 4,
            children: [
              Assets.flagsUs.toSvgImage(),
              Flexible(
                child: Text("USD account", style: CustomTypography.labelSm),
              ),
              SizedBox(
                height: 16,
                width: 16,
                child: Transform.rotate(
                  angle: pi / 2,
                  child: Assets.svgIconArrowRight.toSvgImage(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
