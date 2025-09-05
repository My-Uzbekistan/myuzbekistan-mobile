import 'dart:async';

import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

class InfoAlertDialog extends StatelessWidget {
  final String description;
  final InfoAlertType type;

  const InfoAlertDialog({
    super.key,
    required this.description,
    this.type = InfoAlertType.success,
  });

  @override
  Widget build(BuildContext context) {
    final icon = {
      InfoAlertType.success: Assets.svgIconCheck,
      InfoAlertType.error: Assets.svgIconClose,
      InfoAlertType.warning: Assets.svgIconWarning,
    }[type]!;

    final backgroundColor = {
      InfoAlertType.success: context.appColors.colors.green,
      InfoAlertType.error: context.appColors.colors.red,
      InfoAlertType.warning: context.appColors.colors.yellow,
    }[type]!;

    return Dialog(
      backgroundColor: context.appColors.background.elevation3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          spacing: 16,
          children: [
            CircleAvatar(
              radius: 20,
              backgroundColor: backgroundColor,
              child: icon.toSvgImage(
                  width: 24,
                  colorFilter: ColorFilter.mode(
                      context.appColors.static.white, BlendMode.srcIn)),
            ),
            Flexible(
                child: Text(description,
                    style: const TextStyle(fontSize: 16),
                    textAlign: TextAlign.center)),
          ],
        ),
      ),
    );
  }

  static void show(BuildContext context,
      {String? message,
      InfoAlertType type = InfoAlertType.success,
      int seconds = 2,
      VoidCallback? onDismiss}) {
    Timer? timer;
    showDialog(
        context: context,
        builder: (dialogContext) {
          timer = Timer( Duration(seconds: seconds), () {
            final navigator = Navigator.of(dialogContext, rootNavigator: true);
            if (navigator.canPop()) {
              navigator.pop();
            }
          });
          return InfoAlertDialog(
            description: message ?? context.coreLocalization.unexpected_error,
            type: type,
          );
        }).then((_) {
      timer?.cancel();
      onDismiss?.call();
    });
  }
}

enum InfoAlertType {
  success,
  error,
  warning,
}
