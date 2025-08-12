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
            title: title??context.coreLocalization.unexpected_error_title,
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
    return Platform.isIOS
        ? CupertinoTheme(
            data: CupertinoThemeData(
              primaryColor: context.appColors.colors.blue,
            ),
            child: Builder(builder: (context) {
              return CupertinoAlertDialog(
                title: Text(title).labelLg(),
                content: content(
                  context,
                ),
                actions: [
                  CupertinoDialogAction(
                    textStyle: CustomTypography.bodyLg
                        .copyWith(color: firstButtonTextColor),
                    child: Text(
                      firstBtnText ?? context.coreLocalization.action_close,
                    ),
                    onPressed: () {
                      onFirstButtonClick?.call();
                    },
                  ),
                  if (secondBtnText != null)
                    CupertinoDialogAction(
                      textStyle: CustomTypography.bodyLg
                          .copyWith(color: secondBtnTextColor),
                      child: Text(
                        secondBtnText!,
                      ),
                      onPressed: () {
                        onSecondButtonClick?.call();
                      },
                    )
                ],
              );
            }))
        : AlertDialog(
            backgroundColor: context.appColors.background.elevation1Alt,
            title: Text(
              title,
              textAlign: TextAlign.start,
            ).bodyLg(),
            content: content(context),
            actionsPadding: EdgeInsets.symmetric(horizontal: 20)
                .copyWith(bottom: 20, top: 12),
            buttonPadding: EdgeInsets.zero,
            titlePadding:
                EdgeInsets.symmetric(horizontal: 24).copyWith(top: 24),
            contentPadding: EdgeInsets.symmetric(horizontal: 24),
            actions: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 4),
                child: TextButton(
                  isSemanticButton: false,
                  onPressed: () {
                    onFirstButtonClick?.call();
                  },
                  style: TextButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 4),
                      elevation: 0,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      minimumSize: Size(0, 40),
                      foregroundColor:
                          firstButtonTextColor ?? context.appColors.colors.blue,
                      textStyle: CustomTypography.labelMd.copyWith(),
                      shape: RoundedRectangleBorder(),
                      overlayColor: Colors.transparent),
                  child: Text(
                    firstBtnText ?? context.coreLocalization.action_close,
                  ),
                ),
              ),
              if (secondBtnText != null)
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4),
                  child: TextButton(
                    isSemanticButton: false,
                    onPressed: () {
                      onSecondButtonClick?.call();
                    },
                    style: TextButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 4),
                        elevation: 0,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        minimumSize: Size(0, 40),
                        foregroundColor:
                            secondBtnTextColor ?? context.appColors.colors.blue,
                        textStyle: CustomTypography.labelMd.copyWith(),
                        shape: RoundedRectangleBorder(),
                        overlayColor: Colors.transparent),
                    child: Text(secondBtnText!),
                  ),
                )

              // TextButton(
              //   onPressed: () {},
              //   child: Text("Action1"),
              //   style: TextButton.styleFrom(
              //       elevation: 0,
              //       padding: EdgeInsets.zero,
              //       minimumSize: Size(60, 40),
              //       overlayColor: Colors.transparent),
              // ),
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
          textAlign: TextAlign.center,
        ).bodySm(color: context.appColors.textIconColor.primary),
      );
    }
    return SizedBox();
  }
}
