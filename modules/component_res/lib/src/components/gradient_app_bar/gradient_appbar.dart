import 'dart:io';

import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';

import '../app_gradient_mask/app_gradient_mask.dart';
import '../button/rounded_button.dart';


class GradientAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final Widget? leading;
  final List<Widget>? actions;
  final bool? centerTitle;
  final bool automaticallyImplyLeading;

  const GradientAppBar(
      {super.key,
      this.title,
      this.leading,
      this.actions,
      this.centerTitle,
      this.automaticallyImplyLeading = true});

  @override
  Widget build(BuildContext context) {
    final leadingWidget = Container(
      padding: const EdgeInsets.only(top: 10),
      alignment: Alignment.topRight,
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
      title: title != null ? Text(title!) : null,
      flexibleSpace: const AppGradientMask(),
      actionsPadding: const EdgeInsets.only(right: 16, top: 10),
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
