import 'dart:math';
import 'dart:ui';

import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class AppGradientMask extends StatelessWidget {
  final Color? gradientColor;

  const AppGradientMask({super.key, this.gradientColor});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 1.2,
          sigmaY: 1.2,
        ),
        child: ShaderMask(
          shaderCallback: (rect) =>
            LinearGradient(
          colors: [
          gradientColor??context.appColors.background.base,
          gradientColor??context.appColors.background.base.withValues(alpha: 0.5),
            Colors.transparent,
            ],
              stops: [0.0, 0.5,1],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          ).createShader(rect),
          blendMode: BlendMode.dstIn,
          child: Container(
              color: gradientColor ?? context.appColors.background.base),
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
