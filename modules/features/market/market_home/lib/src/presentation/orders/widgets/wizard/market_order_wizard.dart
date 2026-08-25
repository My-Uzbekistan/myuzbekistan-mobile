import 'dart:math';

import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart' hide Toast;

const double _iconDiameter = 44;
const double _connectorThickness = 2;
const double _stepGap = 6;
const Duration _accentDuration = Duration(milliseconds: 460);

class MarketOrderWizard extends HookWidget {
  const MarketOrderWizard({super.key, required this.steps});

  final List<MarketOrderStep> steps;

  @override
  Widget build(BuildContext context) {
    final entrance = useAnimationController(
      duration: const Duration(milliseconds: 760),
    );

    useEffect(() {
      entrance.forward();
      return null;
    }, const []);

    if (steps.isEmpty) return const SizedBox.shrink();

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      decoration: BoxDecoration(
        color: context.appColors.background.elevation1,
        borderRadius: BorderRadius.circular(20),
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final cellWidth =
              (constraints.maxWidth - _stepGap * (steps.length - 1)) /
              steps.length;
          final stepSpan = cellWidth + _stepGap;
          final connectorWidth = stepSpan - _iconDiameter - 5;

          return TweenAnimationBuilder<double>(
            tween: Tween(begin: 0, end: _passedConnectorCount),
            duration: const Duration(milliseconds: 900),
            curve: Curves.easeOutCubic,
            builder: (context, progress, _) => Stack(
              clipBehavior: Clip.none,
              children: [
                if (connectorWidth > 0)
                  for (var index = 0; index < steps.length - 1; index++)
                    Positioned(
                      left:
                          index * stepSpan +
                          cellWidth / 2 +
                          _iconDiameter / 2 +
                          2.5,
                      top: _iconDiameter / 2 - _connectorThickness / 2,
                      width: connectorWidth,
                      child: _Connector(fill: progress - index),
                    ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: _stepGap,
                  children: [
                    for (var index = 0; index < steps.length; index++)
                      Expanded(
                        child: _Step(
                          step: steps[index],
                          entrance: _stepEntrance(entrance, index),
                        ),
                      ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  double get _passedConnectorCount {
    final currentIndex = steps.indexWhere(
      (step) => step.state == MarketOrderStepState.current,
    );
    if (currentIndex >= 0) return currentIndex.toDouble();

    final doneCount = steps
        .where((step) => step.state == MarketOrderStepState.done)
        .length;

    return max(doneCount - 1, 0).toDouble();
  }

  Animation<double> _stepEntrance(AnimationController controller, int index) {
    final stagger = min(0.09, 0.5 / max(steps.length - 1, 1));
    final start = stagger * index;

    return CurvedAnimation(
      parent: controller,
      curve: Interval(start, start + 0.5, curve: Curves.easeOutCubic),
    );
  }
}

class _Connector extends StatelessWidget {
  const _Connector({required this.fill});

  final double fill;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: _connectorThickness,
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        color: context.appColors.fill.tertiary,
        borderRadius: BorderRadius.circular(_connectorThickness / 2),
      ),
      child: FractionallySizedBox(
        widthFactor: fill.clamp(0, 1),
        heightFactor: 1,
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(_connectorThickness / 2),
            gradient: LinearGradient(
              colors: [
                context.appColors.brandSeaBlue.withValues(alpha: 0.45),
                context.appColors.brandSeaBlue,
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Step extends StatelessWidget {
  const _Step({required this.step, required this.entrance});

  final MarketOrderStep step;
  final Animation<double> entrance;

  @override
  Widget build(BuildContext context) {
    final accent = _accentColor(context, step.state);
    final isCurrent = step.state == MarketOrderStepState.current;

    return AnimatedBuilder(
      animation: entrance,
      builder: (context, child) => Opacity(
        opacity: entrance.value.clamp(0, 1),
        child: Transform.translate(
          offset: Offset(0, (1 - entrance.value) * 12),
          child: child,
        ),
      ),
      child: Column(
        spacing: 8,
        children: [
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              if (isCurrent) const _PulseRing(),
              Container(
                width: _iconDiameter,
                height: _iconDiameter,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: context.appColors.fill.quaternary,
                  shape: BoxShape.circle,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    TweenAnimationBuilder<double>(
                      tween: Tween(begin: 0, end: isCurrent ? 1 : 0),
                      duration: _accentDuration,
                      curve: Curves.easeOutBack,
                      builder: (context, scale, child) =>
                          Transform.scale(scale: scale, child: child),
                      child: Container(
                        width: 36,
                        height: 36,
                        decoration: BoxDecoration(
                          color: context.appColors.background.elevation1,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    TweenAnimationBuilder<Color?>(
                      tween: ColorTween(begin: accent, end: accent),
                      duration: _accentDuration,
                      builder: (context, color, _) =>
                          _glyph(color ?? accent),
                    ),
                  ],
                ),
              ),
            ],
          ),
          TweenAnimationBuilder<Color?>(
            tween: ColorTween(begin: accent, end: accent),
            duration: _accentDuration,
            builder: (context, color, _) => Text(
              step.title,
              maxLines: 2,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
            ).bodyXXsm(color: color ?? accent),
          ),
        ],
      ),
    );
  }

  Widget _glyph(Color color) {
    final stepKey = step.key;

    return SizedBox(
      width: 24,
      height: 24,
      child: Center(
        child: stepKey == null
            ? Container(
                width: 8,
                height: 8,
                decoration: BoxDecoration(color: color, shape: BoxShape.circle),
              )
            : _glyphPath(stepKey).toSvgImage(
                width: 24,
                height: 24,
                fit: BoxFit.contain,
                tintColor: color,
              ),
      ),
    );
  }

  String _glyphPath(MarketOrderStepKey stepKey) => switch (stepKey) {
    MarketOrderStepKey.paid => Assets.svg.market.orderStepCard.path,
    MarketOrderStepKey.preparing => Assets.svg.market.orderStepClock.path,
    MarketOrderStepKey.ready => Assets.svg.market.orderStepCheck.path,
    MarketOrderStepKey.delivering => Assets.svg.market.orderStepCar.path,
    MarketOrderStepKey.delivered => Assets.svg.market.orderStepFlag.path,
  };
}

class _PulseRing extends HookWidget {
  const _PulseRing();

  @override
  Widget build(BuildContext context) {
    final controller = useAnimationController(
      duration: const Duration(milliseconds: 1900),
    );

    useEffect(() {
      controller.repeat();
      return null;
    }, const []);

    return AnimatedBuilder(
      animation: controller,
      builder: (context, _) {
        final wave = Curves.easeOutCubic.transform(controller.value);

        return Transform.scale(
          scale: 1 + 0.36 * wave,
          child: Container(
            width: _iconDiameter,
            height: _iconDiameter,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: context.appColors.brandSeaBlue.withValues(
                  alpha: 0.4 * (1 - wave),
                ),
                width: 2,
              ),
            ),
          ),
        );
      },
    );
  }
}

Color _accentColor(BuildContext context, MarketOrderStepState state) =>
    switch (state) {
      MarketOrderStepState.done => context.appColors.textIconColor.primary,
      MarketOrderStepState.current => context.appColors.brandSeaBlue,
      MarketOrderStepState.pending => context.appColors.textIconColor.tertiary,
    };
