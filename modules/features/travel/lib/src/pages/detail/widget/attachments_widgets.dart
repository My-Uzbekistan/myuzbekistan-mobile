import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

import 'items_title.dart';

class FileWidgets extends StatelessWidget {
  final String title;

  const FileWidgets({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      ItemsTitle(title: title),
      Row(
        children: [_Item()],
      ),
    ]);
  }
}

class _Item extends StatelessWidget {
  const _Item({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 112,
      width: 112,
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: context.appColors.background.elevation1Alt),
      child: Column(
        children: [],
      ),
    );
  }
}
