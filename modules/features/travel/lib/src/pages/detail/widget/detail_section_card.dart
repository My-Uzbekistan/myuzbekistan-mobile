import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class DetailSectionCard extends StatelessWidget {
  final Widget child;

  const DetailSectionCard({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 4, right: 4, bottom: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: context.appColors.background.elevation1,
        borderRadius: BorderRadius.circular(20),
      ),
      child: child,
    );
  }
}
