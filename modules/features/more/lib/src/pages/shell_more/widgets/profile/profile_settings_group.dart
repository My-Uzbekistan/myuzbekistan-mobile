import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class ProfileSettingsGroup extends StatelessWidget {
  final List<Widget> children;

  const ProfileSettingsGroup({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: context.appColors.background.elevation2,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(children: children),
    );
  }
}