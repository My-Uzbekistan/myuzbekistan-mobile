import 'package:flutter/material.dart';
import 'package:shared/shared.dart';
import 'package:travel/src/pages/gift/widget/gift_box_image.dart';

class GiftBoxAnimation extends HookWidget {
  const GiftBoxAnimation({super.key, required this.size, this.zoom = 1});

  final double size;
  final double zoom;

  @override
  Widget build(BuildContext context) {
    final controller = useAnimationController(
      duration: const Duration(seconds: 2),
    );

    useEffect(() {
      controller.repeat();
      return null;
    }, const []);

    final rotation = useMemoized(
      () => TweenSequence<double>([
        TweenSequenceItem(
          tween: Tween(begin: 0.0, end: -0.087).chain(_easeInOut),
          weight: 4,
        ),
        TweenSequenceItem(
          tween: Tween(begin: -0.087, end: 0.087).chain(_easeInOut),
          weight: 4,
        ),
        TweenSequenceItem(
          tween: Tween(begin: 0.087, end: -0.061).chain(_easeInOut),
          weight: 4,
        ),
        TweenSequenceItem(
          tween: Tween(begin: -0.061, end: 0.061).chain(_easeInOut),
          weight: 4,
        ),
        TweenSequenceItem(
          tween: Tween(begin: 0.061, end: -0.026).chain(_easeInOut),
          weight: 4,
        ),
        TweenSequenceItem(
          tween: Tween(begin: -0.026, end: 0.026).chain(_easeInOut),
          weight: 4,
        ),
        TweenSequenceItem(
          tween: Tween(begin: 0.026, end: 0.0).chain(_easeOut),
          weight: 4,
        ),
        TweenSequenceItem(tween: ConstantTween(0.0), weight: 72),
      ]).animate(controller),
      [controller],
    );

    final scale = useMemoized(
      () => TweenSequence<double>([
        TweenSequenceItem(tween: ConstantTween(1.2), weight: 5),
        TweenSequenceItem(
          tween: Tween(begin: 1.2, end: 1.0).chain(_easeOutQuint),
          weight: 35,
        ),
        TweenSequenceItem(tween: ConstantTween(1.0), weight: 60),
      ]).animate(controller),
      [controller],
    );

    return AnimatedBuilder(
      animation: controller,
      builder:
          (context, child) => Transform.scale(
            scale: scale.value,
            child: Transform.rotate(angle: rotation.value, child: child),
          ),
      child: GiftBoxImage(size: size, zoom: zoom),
    );
  }
}

final _easeInOut = CurveTween(curve: Curves.easeInOut);
final _easeOut = CurveTween(curve: Curves.easeOut);
final _easeOutQuint = CurveTween(curve: Curves.easeOutQuint);
