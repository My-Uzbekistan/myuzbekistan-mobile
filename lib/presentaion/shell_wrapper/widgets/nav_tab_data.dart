import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class NavTabData {
  const NavTabData.branch({
    required this.asset,
    required this.label,
    required this.branchIndex,
    this.iconBuilder,
  }) : onTap = null;

  const NavTabData.action({
    required this.asset,
    required this.label,
    required this.onTap,
    this.iconBuilder,
  }) : branchIndex = null;

  final SvgGenImage asset;
  final String label;
  final int? branchIndex;
  final VoidCallback? onTap;
  final Widget Function(bool selected, Color color)? iconBuilder;
}
