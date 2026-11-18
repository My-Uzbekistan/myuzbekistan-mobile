import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class DeleteCardButton extends StatelessWidget {
  final VoidCallback onPressed;

  const DeleteCardButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      behavior: HitTestBehavior.translucent,
      child: SizedBox(
        width: 24,
        height: 24,
        child: Assets.svg.iconTrashCanLine.path.toSvgImage(
          fit: BoxFit.contain,
          tintColor: context.appColors.colors.red,
        ),
      ),
    );
  }
}
