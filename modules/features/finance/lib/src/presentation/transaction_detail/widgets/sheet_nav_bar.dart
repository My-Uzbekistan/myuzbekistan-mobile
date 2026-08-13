import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class SheetNavBar extends StatelessWidget {
  final String title;
  final VoidCallback onClose;

  const SheetNavBar({super.key, required this.title, required this.onClose});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 72),
            child: Text(
              title,
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ).labelLg(color: context.appColors.textIconColor.primary),
          ),
          Positioned(
            right: 16,
            child: RoundedButton.closeButton(onPressed: onClose),
          ),
        ],
      ),
    );
  }
}
