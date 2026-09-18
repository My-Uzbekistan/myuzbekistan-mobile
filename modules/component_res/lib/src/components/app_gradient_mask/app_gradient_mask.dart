import 'dart:math';
import 'dart:ui';

import 'package:component_res/component_res.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppGradientMask extends StatelessWidget {
  final Color? gradientColor;

  const AppGradientMask({super.key, this.gradientColor});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: _sheetCornerRadius(context),
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

  BorderRadius _sheetCornerRadius(BuildContext context) {
    final route = ModalRoute.of(context);
    if (route is CupertinoSheetRoute) {
      return const BorderRadius.vertical(top: Radius.circular(12));
    }
    if (route is ModalBottomSheetRoute) {
      return const BorderRadius.vertical(top: Radius.circular(24));
    }
    return BorderRadius.zero;
  }
}

class BlurHeaderDelegate extends SliverPersistentHeaderDelegate {
  final double height;
  final Color? gradientColor;

  BlurHeaderDelegate(this.height, {this.gradientColor});

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
    return AppGradientMask(gradientColor: gradientColor);
  }

  @override
  bool shouldRebuild(covariant BlurHeaderDelegate oldDelegate) =>
      oldDelegate.gradientColor != gradientColor;
}
