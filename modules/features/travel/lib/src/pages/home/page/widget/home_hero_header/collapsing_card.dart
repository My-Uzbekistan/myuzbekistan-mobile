part of '../home_hero_header.dart';

/// Yig'iluvchi karta: fon rasm + gradient + oq fon, pastki burchaklari yumaloq.
class _CollapsingCard extends StatelessWidget {
  const _CollapsingCard({
    required this.metrics,
    required this.infoRow,
    required this.quickRow,
  });

  final _HeaderMetrics metrics;
  final Widget infoRow;
  final Widget quickRow;

  @override
  Widget build(BuildContext context) {
    final t = metrics.t;
    const radius = BorderRadius.vertical(bottom: Radius.circular(_kRadius));

    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      height: metrics.cardBottom,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: context.appColors.static.white,
          borderRadius: radius,
          boxShadow: t <= 0.02
              ? null
              : [
                  BoxShadow(
                    color: const Color(0xff001024).withValues(alpha: 0.08 * t),
                    blurRadius: 24,
                    offset: const Offset(0, 10),
                  ),
                ],
        ),
        child: ClipRRect(
          borderRadius: radius,
          child: Stack(
            children: [
              _HeaderBackground(opacity: metrics.imageOpacity, zoom: metrics.zoom),
              _FadingSlot(
                top: _kInfoTop + metrics.topInset,
                metrics: metrics,
                child: infoRow,
              ),
              _FadingSlot(
                top: _kQuickTop + metrics.topInset,
                metrics: metrics,
                child: quickRow,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// Fon rasm + qoraytiruvchi gradient; overscroll'da parallax zoom bilan.
class _HeaderBackground extends StatelessWidget {
  const _HeaderBackground({required this.opacity, required this.zoom});

  final double opacity;
  final double zoom;

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Opacity(
        opacity: opacity,
        child: Transform.scale(
          scale: zoom,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Assets.splash.splash4.image(
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
              ),
              const DecoratedBox(
                decoration: BoxDecoration(gradient: _kImageOverlay),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// Yig'ilishda so'nib yuqoriga suriladigan kontent uchun joy (info / tez amallar).
class _FadingSlot extends StatelessWidget {
  const _FadingSlot({
    required this.top,
    required this.metrics,
    required this.child,
  });

  final double top;
  final _HeaderMetrics metrics;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: _kHPad,
      right: _kHPad,
      child: IgnorePointer(
        ignoring: metrics.contentOpacity < 0.05,
        child: Opacity(
          opacity: metrics.contentOpacity,
          child: Transform.translate(
            offset: Offset(0, -28 * metrics.t),
            child: child,
          ),
        ),
      ),
    );
  }
}
