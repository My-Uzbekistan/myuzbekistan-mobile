import 'package:flutter/material.dart';

import '../../../component_res.dart';

enum ActionButtonSizeType {
  // small,
  medium(44),
  large(56);

  final double size;

  const ActionButtonSizeType(this.size);
}

enum ActionButtonType {
  primary,
  secondary,
  text,
}

class AppActionButton extends StatelessWidget {
  final ActionButtonSizeType sizeType;
  final ActionButtonType type;

  final String actionText;
  final VoidCallback? onPressed;
  final bool isLoading;
  final bool disable;
  final Color? contentColor;
  final Widget? icon;

  const AppActionButton(
      {super.key,
      required this.actionText,
      this.onPressed,
      this.isLoading = false,
      this.disable = false,
      this.type = ActionButtonType.primary,
      this.contentColor,
      this.icon,
      this.sizeType = ActionButtonSizeType.medium});

  @override
  Widget build(BuildContext context) {
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

    final disabledBackgroundColor = switch (type) {
      ActionButtonType.primary =>
        context.appColors.brand.withValues(alpha: 0.24),
      ActionButtonType.secondary => context.appColors.fill.tertiary,
      ActionButtonType.text => Colors.transparent,
    };
    final backgroundColor = switch (type) {
      ActionButtonType.primary => context.appColors.brand,
      ActionButtonType.secondary => context.appColors.fill.tertiary,
      ActionButtonType.text => Colors.transparent,
    };

    final foregroundColor = contentColor ??
        switch (type) {
          ActionButtonType.primary => Colors.white,
          ActionButtonType.secondary => context.appColors.textIconColor.primary,
          ActionButtonType.text => context.appColors.brand,
        };

    final disableForegroundColor = switch (type) {
      ActionButtonType.primary => Colors.white,
      ActionButtonType.secondary => context.appColors.textIconColor.tertiary,
      ActionButtonType.text => context.appColors.textIconColor.tertiary,
    };

    return FilledButton.tonalIcon(
      onPressed: isDisabled ? null : onPressed,
      label: labelContent,
      icon: SizedBox(
        height: 44,
        child:
        ColorFiltered(
          colorFilter: ColorFilter.mode(
              isDisabled ? disableForegroundColor : foregroundColor,
              BlendMode.srcIn),
          child: icon,
        ),
      ),
      style: FilledButton.styleFrom(
          minimumSize: Size.fromHeight(sizeType.size),
          disabledForegroundColor: disableForegroundColor,
          iconColor: Colors.red,
          foregroundColor: foregroundColor,
          backgroundColor: backgroundColor,
          disabledBackgroundColor: disabledBackgroundColor,
          splashFactory: NoSplash.splashFactory,
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          elevation: 0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(100))),
    );
  }
}
