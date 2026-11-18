import 'dart:ui';

import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class MapLocationPin extends HookWidget {
  const MapLocationPin({super.key, required this.isLifted});

  final bool isLifted;

  @override
  Widget build(BuildContext context) {
    final controller = useAnimationController(
      duration: const Duration(milliseconds: 300),
    );

    useEffect(() {
      if (isLifted) {
        controller.forward();
      } else {
        controller.reverse();
      }
      return null;
    }, [isLifted]);

    final lift = Tween<double>(begin: 0, end: -20).animate(
      CurvedAnimation(parent: controller, curve: Curves.linear),
    );
    final dotScale = Tween<double>(begin: 1.2, end: 0.5).animate(
      CurvedAnimation(parent: controller, curve: Curves.easeOutCubic),
    );

    return IgnorePointer(
      child: SizedBox(
        width: 56,
        height: 116,
        child: AnimatedBuilder(
          animation: controller,
          builder: (context, child) => Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                left: 24,
                top: 54,
                width: 8,
                height: 8,
                child: Transform.scale(
                  scale: dotScale.value,
                  child: Assets.svg.mapPinDot.svg(),
                ),
              ),
              Positioned(
                left: 0,
                top: 4,
                width: 56,
                height: 57,
                child: Transform.translate(
                  offset: Offset(0, lift.value),
                  child: ImageFiltered(
                    imageFilter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                    child: Assets.svg.mapPinShape.path.toSvgImage(
                      fit: BoxFit.contain,
                      tintColor: context.appColors.static.black.withValues(
                        alpha: 0.12,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 0,
                width: 56,
                height: 57,
                child: Transform.translate(
                  offset: Offset(0, lift.value),
                  child: Assets.svg.mapPin.svg(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
