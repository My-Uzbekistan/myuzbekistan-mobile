import 'dart:io';

import 'package:component_res/component_res.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void showActionAlertDialog(
  BuildContext context, {
  String? title,
  final String? message,
  final String? firstActionText,
  final String? secondActionText,
  final Color? firstButtonTextColor,
  final Color? secondBtnTextColor,
  final VoidCallback? onFirstButtonClick,
  onSecondButtonClick,
  final bool barrierDismissible = true,
}) {
  showDialog(
      context: context,
      barrierDismissible: barrierDismissible,
      builder: (context) => ActionAlertdialog(
            title: title ?? context.coreLocalization.unexpected_error_title,
            contentText: message,
            firstBtnText: firstActionText,
            secondBtnText: secondActionText,
            firstButtonTextColor: firstButtonTextColor,
            secondBtnTextColor: secondBtnTextColor,
            onFirstButtonClick: () {
              Navigator.of(context).pop();
              onFirstButtonClick?.call();
            },
            onSecondButtonClick: () {
              Navigator.of(context).pop();
              onSecondButtonClick?.call();
            },
          ));
}

class ActionAlertdialog extends StatelessWidget {
  final VoidCallback? onFirstButtonClick, onSecondButtonClick;
  final String? firstBtnText;
  final String? secondBtnText;
  final String? contentText;
  final String title;
  final Color? firstButtonTextColor;
  final Color? secondBtnTextColor;

  const ActionAlertdialog(
      {super.key,
      required this.title,
      this.contentText,
      this.firstBtnText,
      this.secondBtnText,
      this.secondBtnTextColor,
      this.firstButtonTextColor,
      this.onFirstButtonClick,
      this.onSecondButtonClick});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: context.appColors.background.elevation2,
      title: null,
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        spacing: 10,
        children: [
          Text(title).h3(color: context.appColors.textIconColor.primary),
          Text(
            contentText!,
            textAlign: TextAlign.start,
          ).bodyMd(color: context.appColors.textIconColor.primary),
        ],
      ),
      actionsPadding: EdgeInsets.symmetric(horizontal: 20).copyWith(bottom: 20),
      buttonPadding: EdgeInsets.zero,
      titlePadding: EdgeInsets.symmetric(horizontal: 24).copyWith(top: 24),
      contentPadding:
          EdgeInsets.symmetric(horizontal: 20).copyWith(top: 20, bottom: 24),
      actions: [
        AppActionButton(
          actionText: firstBtnText ?? context.coreLocalization.action_close,
          contentColor: firstButtonTextColor,
          onPressed: onFirstButtonClick,
          type: ActionButtonType.secondary,
        ),
        if (secondBtnText != null)
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: AppActionButton(
              actionText:
                  secondBtnText ?? context.coreLocalization.action_close,
              contentColor: secondBtnTextColor,
              onPressed: onSecondButtonClick,
              type: ActionButtonType.secondary,
            ),
          ),
      ],
      actionsOverflowDirection: VerticalDirection.down,
    );
  }

  Widget content(BuildContext context) {
    if (contentText != null) {
      return Padding(
        padding: EdgeInsets.only(top: 8),
        child: Text(
          contentText!,
          textAlign: TextAlign.start,
        ).bodyMd(color: context.appColors.textIconColor.primary),
      );
    }
    return SizedBox();
  }
}
