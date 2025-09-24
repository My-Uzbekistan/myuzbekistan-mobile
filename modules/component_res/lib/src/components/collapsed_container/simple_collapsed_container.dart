import 'dart:io';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../component_res.dart';

class SimpleCollapsedContainer extends StatelessWidget {
  final String title;
  final Widget? trailing;
  final Widget sliverContent;

  const SimpleCollapsedContainer(
      {super.key,
      required this.title,
      required this.sliverContent,
      this.trailing});

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    final double expandedHeight = 2 * kToolbarHeight;
    final double collapsedHeight = kToolbarHeight;
    final double maxExtent = expandedHeight + statusBarHeight;
    final double minExtent = collapsedHeight + statusBarHeight;
    return CupertinoTheme(
      data: CupertinoThemeData(
        textTheme: CupertinoTextThemeData(
          navLargeTitleTextStyle: CustomTypography.H1.copyWith(
            color: context.appColors.textIconColor.primary,
          ),
          navTitleTextStyle: CustomTypography.labelLg.copyWith(
            color: context.appColors.textIconColor.primary,
          ),
        ),
      ),
      child: CustomScrollView(
        slivers: [
          Platform.isIOS
              ? CupertinoSliverNavigationBar(
                  largeTitle: Text(title),
                  leading: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      CupertinoIcons.back,
                      color: context.appColors.textIconColor
                          .primary, // o'zingiz xohlagan rang
                    ),
                  ),
                  trailing: trailing,
                  backgroundColor: context.appColors.background.background
                      .withValues(alpha: 0.9),
                  border: Border(),
                  stretch: true,
                )
              : SliverAppBar(
                  expandedHeight: 2 * kToolbarHeight,
                  pinned: true,
                  flexibleSpace: LayoutBuilder(
                    builder: (context, constraints) {
                      final double currentExtent = constraints.maxHeight;

                      final double t = ((maxExtent - currentExtent) /
                              (maxExtent - minExtent))
                          .clamp(0.0, 1.0);
                      final double horizontalPadding =
                          lerpDouble(16.0, 56.0, t)!;
                      final TextStyle expandedStyle = CustomTypography.H1;
                      final TextStyle collapsedStyle = CustomTypography.labelLg;

                      final TextStyle interpolatedStyle =
                          TextStyle.lerp(expandedStyle, collapsedStyle, t)!;

                      return FlexibleSpaceBar(
                        titlePadding: EdgeInsetsDirectional.only(
                            start: horizontalPadding, bottom: 16),
                        title: Text(
                          title,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: interpolatedStyle,
                        ),
                        expandedTitleScale: 1,
                        centerTitle: false,
                      );
                    },
                  ),
                  actionsPadding: EdgeInsets.only(bottom: 0),
                  actions: [
                    Container(
                      height: kToolbarHeight,
                      alignment: Alignment.bottomCenter,
                      padding: EdgeInsets.only(bottom: 16),
                      child: Padding(
                        padding: EdgeInsets.only(right: 16),
                        child: trailing,
                      ),
                    )
                  ],
                ),
          sliverContent
        ],
      ),
    );
  }
}
