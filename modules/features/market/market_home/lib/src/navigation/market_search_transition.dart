import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

Page<void> buildMarketSearchTransitionPage({
  required Widget child,
  required GoRouterState state,
}) {
  return CustomTransitionPage<void>(
    key: state.pageKey,
    name: state.name,
    child: child,
    transitionDuration: const Duration(milliseconds: 380),
    reverseTransitionDuration: const Duration(milliseconds: 300),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      final backdrop = CurvedAnimation(
        parent: animation,
        curve: const Interval(0, 0.5, curve: Curves.easeOutCubic),
        reverseCurve: const Interval(0.2, 1, curve: Curves.easeInCubic),
      );
      final content = CurvedAnimation(
        parent: animation,
        curve: const Interval(0.4, 1, curve: Curves.easeOutCubic),
        reverseCurve: const Interval(0.5, 1, curve: Curves.easeInCubic),
      );

      return Stack(
        fit: StackFit.expand,
        children: [
          FadeTransition(
            opacity: backdrop,
            child: ColoredBox(
              color: context.appColors.background.underlayer,
            ),
          ),
          FadeTransition(opacity: content, child: child),
        ],
      );
    },
  );
}
