import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class ItemsTitle extends StatelessWidget {
  final String title;

  const ItemsTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24.0, bottom: 16),
      child: Text(
        title,
        style: CustomTypography.H2,
      ),
    );
  }
}
