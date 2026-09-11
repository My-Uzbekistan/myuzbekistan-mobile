part of '../home_hero_header.dart';

class _CollapsingCard extends StatelessWidget {
  const _CollapsingCard({
    required this.metrics,
    required this.backgroundImageUrl,
    required this.isBackgroundLoading,
    required this.infoRow,
    required this.metricsRow,
    required this.quickRow,
  });

  final _HeaderMetrics metrics;
  final String? backgroundImageUrl;
  final bool isBackgroundLoading;
  final Widget infoRow;
  final Widget metricsRow;
  final Widget quickRow;

  @override
  Widget build(BuildContext context) {
    final t = metrics.t;
    final shadow = context.appColors.service.shadow;
    const radius = BorderRadius.vertical(bottom: Radius.circular(_kRadius));

    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      height: metrics.cardBottom,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: context.appColors.background.elevation1,
          borderRadius: radius,
          boxShadow:
              t <= 0.02
                  ? null
                  : [
                    BoxShadow(
                      color: shadow.withValues(alpha: shadow.a * t),
                      blurRadius: 24,
                      offset: const Offset(0, 10),
                    ),
                  ],
        ),
        child: ClipRRect(
          borderRadius: radius,
          child: Stack(
            children: [
              _HeaderBackground(
                imageUrl: backgroundImageUrl,
                isLoading: isBackgroundLoading,
                opacity: metrics.imageOpacity,
                zoom: metrics.zoom,
              ),
              _FadingSlot(
                top: _kInfoTop + metrics.topInset,
                metrics: metrics,
                child: infoRow,
              ),
              _FadingSlot(
                top: _kMetricsTop + metrics.topInset,
                metrics: metrics,
                child: metricsRow,
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

class _HeaderBackground extends StatelessWidget {
  const _HeaderBackground({
    required this.imageUrl,
    required this.isLoading,
    required this.opacity,
    required this.zoom,
  });

  final String? imageUrl;
  final bool isLoading;
  final double opacity;
  final double zoom;

  static final AssetGenImage _fallback = SplashBackground.random();

  Widget _background() {
    final url = imageUrl ?? "";
    if (url.isEmpty) {
      return isLoading
          ? const _HeaderBackgroundShimmer()
          : _fallback.image(fit: BoxFit.cover, alignment: Alignment.topCenter);
    }
    return AppNetworkImage(
      url,
      fit: BoxFit.cover,
      alignment: Alignment.topCenter,
      loadingWidget: const _HeaderBackgroundShimmer(),
      placeholder: _fallback.image(
        fit: BoxFit.cover,
        alignment: Alignment.topCenter,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Transform.scale(
        scale: zoom,
        child: Stack(
          fit: StackFit.expand,
          children: [
            _background(),
            DecoratedBox(
              decoration: BoxDecoration(gradient: _imageOverlay(context)),
            ),
            if (opacity < 0.999)
              ColoredBox(
                color: context.appColors.background.elevation1.withValues(
                  alpha: 1 - opacity,
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class _HeaderBackgroundShimmer extends StatelessWidget {
  const _HeaderBackgroundShimmer();

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromDefault(
      child: ColoredBox(
        color: context.appColors.background.elevation2,
        child: const SizedBox.expand(),
      ),
    );
  }
}

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
    final relTop = top - metrics.topInset;
    final stretch = metrics.overscroll * (relTop / _kExpanded);

    return Positioned(
      top: top,
      left: _kHPad,
      right: _kHPad,
      child: IgnorePointer(
        ignoring: metrics.contentOpacity < 0.05,
        child: GlassFadeScope(
          opacity: metrics.contentOpacity,
          child: Transform.translate(
            offset: Offset(0, -28 * metrics.t + stretch),
            child: child,
          ),
        ),
      ),
    );
  }
}
