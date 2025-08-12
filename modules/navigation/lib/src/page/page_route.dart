import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

class ModalPage<T> extends Page<T> {
  const ModalPage({required this.child, this.showDragHandle = true});

  final Widget child;
  final bool showDragHandle;

  @override
  Route<T> createRoute(BuildContext context) => ModalBottomSheetRoute<T>(
    settings: this,
    builder: (context) {
      return child;
    },
    isScrollControlled: true,
    useSafeArea: true,
    clipBehavior: Clip.antiAlias,
    showDragHandle: showDragHandle,
  );
}

enum SlideAlign { horizontal, vertical }

Page buildSlideTransitionPage({
  required Widget child,
  required BuildContext context,
  required GoRouterState state,
  SlideAlign slideAlign = SlideAlign.horizontal,
}) {
  final begin =
      slideAlign == SlideAlign.vertical ? Offset(0, 0.9) : Offset(0.9, 0);
  return Platform.isAndroid
      ? CustomTransitionPage<void>(
        key: state.pageKey,
        child: child,
        name: state.name,
        transitionDuration: const Duration(milliseconds: 150),
        reverseTransitionDuration: const Duration(milliseconds: 200),
        transitionsBuilder: (
          BuildContext context,
          Animation<double> animation,
          Animation<double> secondaryAnimation,
          Widget child,
        ) {
          return SlideTransition(
            position: Tween<Offset>(
              begin: begin,
              end: Offset(0, 0),
            ).animate(animation),
            child: FadeTransition(
              opacity: Tween<double>(begin: 0.8, end: 1).animate(animation),
              child: child,
            ),
          );
        },
      )
      : CupertinoPage(
        child: child,
        key: state.pageKey,
        name: state.name,
        fullscreenDialog: slideAlign == SlideAlign.vertical,
      );
}

class ModalSheetPage<T> extends Page<T> {
  final Widget child;

  const ModalSheetPage({required this.child});

  @override
  Route<T> createRoute(BuildContext context) {
    return Platform.isIOS
        ? CupertinoSheetRoute(builder: (context) => child, settings: this)
        : ModalBottomSheetRoute<T>(
          settings: this,
          builder: (context) => child,
          isScrollControlled: true,
          useSafeArea: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          clipBehavior: Clip.antiAlias,
        );
  }
}
