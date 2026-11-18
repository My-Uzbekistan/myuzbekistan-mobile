import 'dart:io';

import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

import '../app_gradient_mask/app_gradient_mask.dart';
import '../button/rounded_button.dart';


class GradientAppBar extends StatelessWidget implements PreferredSizeWidget {
  static const double navbarHeight = 48;

  final String? title;
  final Widget? widget;
  final Widget? leading;
  final List<Widget>? actions;
  final bool? centerTitle;
  final bool automaticallyImplyLeading;
  final double? toolbarHeight;
  final Color? gradientColor;

  const GradientAppBar(
      {super.key,
      this.title,
        this.widget,
      this.leading,
      this.actions,
      this.centerTitle,
      this.toolbarHeight,
      this.gradientColor,
      this.automaticallyImplyLeading = true});

  double get _height => toolbarHeight ?? kToolbarHeight;

  @override
  Widget build(BuildContext context) {
    final actionsTopPadding = toolbarHeight == null ? 10.0 : 0.0;
    final leadingWidget = Container(
      padding: EdgeInsets.only(top: actionsTopPadding),
      alignment: Alignment.centerRight,
      child: leading ??
          (automaticallyImplyLeading
              ? RoundedButton.arrowLeft(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                )
              : null),
    );

    return AppBar(
      backgroundColor: Colors.transparent,
      automaticallyImplyLeading: false,
      clipBehavior: Clip.none,
      leadingWidth: 60,
      leading: leadingWidget,
      centerTitle: centerTitle,
      elevation: 0,
      scrolledUnderElevation: 0,
      forceMaterialTransparency: true,
      shadowColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,

      title: title != null ? Text(title!) : widget,
      flexibleSpace: AppGradientMask(gradientColor: gradientColor),
      toolbarHeight: toolbarHeight,
      actionsPadding: EdgeInsets.only(right: 16, top: actionsTopPadding),
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(_height);
}
