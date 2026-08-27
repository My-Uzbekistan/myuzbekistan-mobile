import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class MuseumStateView extends StatelessWidget {
  const MuseumStateView({
    super.key,
    required this.title,
    required this.message,
    this.actionText,
    this.onAction,
  });

  final String title;
  final String message;
  final String? actionText;
  final VoidCallback? onAction;

  @override
  Widget build(BuildContext context) {
    final actionText = this.actionText;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        spacing: 8,
        children: [
          Assets.png.exclamationmarkSquare.image(width: 64, height: 64),
          Text(
            title,
            textAlign: TextAlign.center,
          ).h3(color: context.appColors.textIconColor.primary),
          Text(
            message,
            textAlign: TextAlign.center,
          ).bodyMd(color: context.appColors.textIconColor.secondary),
          if (actionText != null && onAction != null)
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: AppActionButton(
                type: ActionButtonType.secondary,
                actionText: actionText,
                onPressed: onAction,
              ),
            ),
        ],
      ),
    );
  }
}
