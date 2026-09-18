import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class BounceTap extends HookWidget {
  final Widget child;
  final Duration? duration;
  final VoidCallback? onTap;
  final VoidCallback? onLongPress;

  const BounceTap({
    super.key,
    required this.child,
    this.onTap,
    this.duration,
    this.onLongPress,
  });

  @override
  Widget build(BuildContext context) {
    final controller = useAnimationController(
      duration: duration ?? const Duration(milliseconds: 250),
      lowerBound: 0,
      upperBound: 0.06,
    );

    return GestureDetector(
      onTapDown: (_) => controller.forward(),
      onTapUp: (_) {
        controller.reverse();
        onTap?.call();
      },
      onTapCancel: () => controller.reverse(),
      onLongPress: onLongPress,
      child: AnimatedBuilder(
        animation: controller,
        child: child,
        builder: (context, child) =>
            Transform.scale(scale: 1 - controller.value, child: child),
      ),
    );
  }
}
