import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class NotificationUnseenDot extends StatelessWidget {
  const NotificationUnseenDot({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Container(
        height: 8,
        width: 8,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: context.appColors.colors.red,
        ),
      ),
    );
  }
}
