import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class CitySummary extends StatelessWidget {
  final String name;
  final String? subtitle;

  const CitySummary({super.key, required this.name, this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: context.appColors.background.elevation1,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        spacing: 16,
        children: [
          Text(name, textAlign: TextAlign.center).h1(),
          if ((subtitle ?? "").isNotEmpty)
            Text(
              subtitle!,
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ).bodyMd(color: context.appColors.textIconColor.secondary),
        ],
      ),
    );
  }
}
