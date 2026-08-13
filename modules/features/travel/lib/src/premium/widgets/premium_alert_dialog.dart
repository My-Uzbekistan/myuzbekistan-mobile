import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class PremiumAlertDialog extends StatelessWidget {
  static const double _maxWidth = 300;

  final String title;
  final String? description;
  final String? actionText;
  final VoidCallback? onAction;

  const PremiumAlertDialog({
    super.key,
    required this.title,
    this.description,
    this.actionText,
    this.onAction,
  });

  @override
  Widget build(BuildContext context) {
    final description = this.description;
    final actionText = this.actionText;

    return Dialog(
      backgroundColor: context.appColors.background.elevation2,
      insetPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: _maxWidth),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            spacing: 8,
            children: [
              Assets.png.iconPremium.image(width: 80, height: 80),
              Column(
                mainAxisSize: MainAxisSize.min,
                spacing: 10,
                children: [
                  Text(
                    title,
                    textAlign: TextAlign.center,
                  ).h2(color: context.appColors.textIconColor.primary),
                  if (description != null)
                    Text(
                      description,
                      textAlign: TextAlign.center,
                    ).bodyMd(color: context.appColors.textIconColor.primary),
                  if (actionText != null)
                    AppActionButton(
                      actionText: actionText,
                      type: ActionButtonType.secondary,
                      contentColor: context.appColors.brand,
                      onPressed: onAction,
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
