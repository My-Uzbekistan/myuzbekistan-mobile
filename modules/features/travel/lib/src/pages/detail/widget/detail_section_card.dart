import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class DetailSectionCard extends StatelessWidget {
  final Widget child;
  final bool squareTop;

  const DetailSectionCard({
    super.key,
    required this.child,
    this.squareTop = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: context.appColors.background.elevation1,
        borderRadius: squareTop
            ? const BorderRadius.vertical(bottom: Radius.circular(20))
            : BorderRadius.circular(20),
      ),
      child: child,
    );
  }
}
