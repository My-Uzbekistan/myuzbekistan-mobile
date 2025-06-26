import 'package:flutter/material.dart';

import '../../../component_res.dart';

enum ActionButtonSizeType {
  // small,
  medium,
  large,
}

class AppActionButton extends StatelessWidget {
  final ActionButtonSizeType sizeType;

  final String actionText;
  final VoidCallback? onPressed;
  final bool isLoading;
  final bool disable;

  const AppActionButton(
      {super.key,
      required this.actionText,
      this.onPressed,
      this.isLoading = false,
        this.disable=false,
      this.sizeType = ActionButtonSizeType.medium});

  @override
  Widget build(BuildContext context) {
    final height = sizeType == ActionButtonSizeType.medium ? 44.0 : 56.0;
    final fontStyle = sizeType == ActionButtonSizeType.medium
        ? CustomTypography.bodyMd
        : CustomTypography.bodyLg;
    final double borderRadius =
        sizeType == ActionButtonSizeType.medium ? 12 : 16;

    final isDisabled = onPressed == null || isLoading || disable;

    final labelContent = isLoading
        ? LoadingIndicator(
            size: 24,
          )
        : Text(
            actionText,
            style: fontStyle,
          );
    return FilledButton.tonalIcon(
      onPressed: isDisabled ? null : onPressed,
      label: labelContent,
      style: FilledButton.styleFrom(
          minimumSize: Size.fromHeight(height),
          disabledForegroundColor: context.appColors.textIconColor.tertiary,
          foregroundColor: context.appColors.textIconColor.primary,
          backgroundColor: context.appColors.fill.tertiary,
          disabledBackgroundColor: context.appColors.fill.quaternary,
          splashFactory: NoSplash.splashFactory,
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          elevation: 0,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius))),
    );
  }
}
