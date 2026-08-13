import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class CardStatusBadge extends StatelessWidget {
  final String message;

  const CardStatusBadge({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: context.appColors.colors.red,
        borderRadius: BorderRadius.circular(56),
      ),
      child: Text(
        message,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ).labelSm(color: context.appColors.static.white),
    );
  }
}
