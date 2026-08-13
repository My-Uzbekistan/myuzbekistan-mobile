import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class FinanceSectionCard extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry padding;
  final bool clipContent;

  const FinanceSectionCard({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.all(16),
    this.clipContent = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      clipBehavior: clipContent ? Clip.antiAlias : Clip.none,
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: context.appColors.background.elevation1,
      ),
      child: child,
    );
  }
}
