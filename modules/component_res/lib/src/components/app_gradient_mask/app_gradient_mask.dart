import 'dart:math';
import 'dart:ui';

import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class AppGradientMask extends StatelessWidget {
  final Color? gradientColor;
  const AppGradientMask({super.key,this.gradientColor});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 0,
          sigmaY: 0,
          tileMode: TileMode.decal,
        ),
        child: ShaderMask(
          shaderCallback: (rect) => LinearGradient(
            colors: [
              gradientColor??context.appColors.background.base,
              Colors.transparent,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            tileMode: TileMode.decal,

          ).createShader(rect),
          blendMode: BlendMode.dstATop,
          child: Container(color: gradientColor??context.appColors.background.base),
        ),
      ),
    );
  }
}

class BlurHeaderDelegate extends SliverPersistentHeaderDelegate {
  final double height;

  BlurHeaderDelegate(this.height);

  @override
  double get minExtent => height;

  @override
  double get maxExtent => height;

  @override
  Widget build(
      BuildContext context,
      double shrinkOffset,
      bool overlapsContent,
      ) {
    return AppGradientMask();
  }

  @override
  bool shouldRebuild(covariant BlurHeaderDelegate oldDelegate) => false;
}
