import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class ProfileDisplayField extends StatelessWidget {
  final String label;
  final String value;

  const ProfileDisplayField({
    super.key,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      constraints: const BoxConstraints(minHeight: 56),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: context.appColors.fill.quaternary,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 2,
        children: [
          Text(
            label,
          ).bodySm(color: context.appColors.textIconColor.secondary),
          Text(
            value,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ).bodyLg(color: context.appColors.textIconColor.primary),
        ],
      ),
    );
  }
}
