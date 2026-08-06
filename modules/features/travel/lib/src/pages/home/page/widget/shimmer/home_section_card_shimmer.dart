import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class HomeSectionCardShimmer extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry padding;

  const HomeSectionCardShimmer({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.all(16),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 12),
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: context.appColors.background.elevation1,
      ),
      child: Shimmer.fromDefault(child: child),
    );
  }
}
