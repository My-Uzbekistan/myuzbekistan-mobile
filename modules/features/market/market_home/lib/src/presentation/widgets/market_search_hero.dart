import 'package:flutter/material.dart';

class MarketSearchHero extends StatelessWidget {
  static const String fieldTag = "market_search_field";
  static const String leadingTag = "market_search_leading";

  const MarketSearchHero({super.key, required this.tag, required this.child});

  final String tag;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: tag,
      flightShuttleBuilder: _flightShuttleBuilder,
      child: Material(type: MaterialType.transparency, child: child),
    );
  }

  static Widget _flightShuttleBuilder(
    BuildContext flightContext,
    Animation<double> animation,
    HeroFlightDirection direction,
    BuildContext fromHeroContext,
    BuildContext toHeroContext,
  ) {
    final fromChild = (fromHeroContext.widget as Hero).child;
    final toChild = (toHeroContext.widget as Hero).child;

    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        final value = animation.value;
        return Stack(
          fit: StackFit.passthrough,
          children: [
            Opacity(
              opacity:
                  1 -
                  const Interval(
                    0.55,
                    0.9,
                    curve: Curves.easeIn,
                  ).transform(value),
              child: fromChild,
            ),
            Opacity(
              opacity: const Interval(
                0,
                0.55,
                curve: Curves.easeOut,
              ).transform(value),
              child: toChild,
            ),
          ],
        );
      },
    );
  }
}
