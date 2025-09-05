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
  final Color? containerColor;
  final Color? disableContainerColor;
  final Widget? icon;
  final bool iconColorFiltered;

  const AppActionButton(
      {super.key,
      required this.actionText,
      this.onPressed,
      this.isLoading = false,
      this.disable = false,
      this.type = ActionButtonType.primary,
      this.contentColor,
      this.containerColor,
      this.disableContainerColor,
      this.icon,
      this.iconColorFiltered = true,
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
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          );

    final disabledBackgroundColor = disableContainerColor ??
        switch (type) {
          ActionButtonType.primary =>
            context.appColors.brand.withValues(alpha: 0.24),
          ActionButtonType.secondary => context.appColors.fill.tertiary,
          ActionButtonType.text => Colors.transparent,
        };
    final backgroundColor = containerColor ??
        switch (type) {
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
      icon: !isLoading && icon != null
          ? SizedBox(
              height: sizeType == ActionButtonSizeType.medium ? 20 : 24,
              child: FittedBox(
                fit: BoxFit.contain,
                child: iconColorFiltered
                    ? ColorFiltered(
                        colorFilter: ColorFilter.mode(
                            isDisabled
                                ? disableForegroundColor
                                : foregroundColor,
                            BlendMode.srcIn),
                        child: icon,
                      )
                    : icon,
              ),
            )
          : null,
      style: FilledButton.styleFrom(
          minimumSize: Size.fromHeight(sizeType.size),
          disabledForegroundColor: disableForegroundColor,
          iconColor: Colors.red,
          padding: EdgeInsets.zero,
          foregroundColor: foregroundColor,
          backgroundColor: backgroundColor,
          textStyle: fontStyle,
          disabledBackgroundColor: disabledBackgroundColor,
          splashFactory: NoSplash.splashFactory,
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          elevation: 0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(100))),
    );
  }
}
