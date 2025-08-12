import 'package:flutter/material.dart';

import '../../../component_res.dart';

enum ActionButtonSizeType {
  // small,
  medium,
  large,
}

enum ActionButtonType { fill, text, brand }

class AppActionButton extends StatelessWidget {
  final ActionButtonSizeType sizeType;
  final ActionButtonType type;

  final String actionText;
  final VoidCallback? onPressed;
  final bool isLoading;
  final bool disable;
  final Color? contentColor;

  const AppActionButton(
      {super.key,
      required this.actionText,
      this.onPressed,
      this.isLoading = false,
      this.disable = false,
      this.type = ActionButtonType.fill,
      this.contentColor,
      this.sizeType = ActionButtonSizeType.medium});

  @override
  Widget build(BuildContext context) {
    final height = sizeType == ActionButtonSizeType.medium ? 44.0 : 56.0;
    final fontStyle = sizeType == ActionButtonSizeType.medium
        ? CustomTypography.labelMd
        : CustomTypography.labelLg;


    final isDisabled = onPressed == null || isLoading || disable;

    final labelContent = isLoading
        ? LoadingIndicator(
            size: 24,
          )
        : Text(
            actionText,
            style: fontStyle,
          );

    final disabledBackgroundColor = type == ActionButtonType.fill
        ? context.appColors.fill.quaternary
        : Colors.transparent;
    final backgroundColor = switch (type) {
      ActionButtonType.fill => context.appColors.fill.tertiary,
      ActionButtonType.brand => context.appColors.nonOpaque.brand,
      ActionButtonType.text => Colors.transparent,
    };

    final foregroundColor = contentColor ??
        switch (type) {
          ActionButtonType.fill => context.appColors.textIconColor.primary,
          ActionButtonType.brand => context.appColors.brand,
          ActionButtonType.text => context.appColors.brand,
        };

    return FilledButton.tonalIcon(
      onPressed: isDisabled ? null : onPressed,
      label: labelContent,

      style: FilledButton.styleFrom(
          minimumSize: Size.fromHeight(height),
          disabledForegroundColor: context.appColors.textIconColor.tertiary,
          foregroundColor: foregroundColor,
          backgroundColor: backgroundColor,
          disabledBackgroundColor: disabledBackgroundColor,
          splashFactory: NoSplash.splashFactory,
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          elevation: 0,
          shape:   const CircleBorder()

      ),
    );
  }
}
